part of 'multi_data_picker.dart';

class _DataListDialog<T> extends StatefulWidget {
  final bool Function(T a, T b) isEqual;
  final List<T> initialSelect;
  final DataPickerPopupType<T> type;

  const _DataListDialog({
    super.key,
    required this.isEqual,
    required this.initialSelect,
    required this.type,
  });

  @override
  State<_DataListDialog<T>> createState() => _DataListDialogState<T>();
}

class _DataListDialogState<T> extends State<_DataListDialog<T>> {
  late _MultiSelectDialogController<T> _controller;

  @override
  void initState() {
    _controller = _MultiSelectDialogController<T>(
      isEqual: widget.isEqual,
      loadData: widget.type.loadData,
      initialSelect: widget.initialSelect,
    )..loadDataWithFilter("");
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var searchField = TextField(
      controller: _controller._searchController,
      autofocus: widget.type.searchAutoFocus,
      decoration:
          widget.type.searchInputDecoration ??
          InputDecoration(
            prefixIcon: Icon(Icons.search),
            hintText: "Search",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(width: 1),
            ),
          ),
      onChanged: (value) {
        _controller.loadDataWithFilter(value);
      },
    );

    var listView = Column(
      children: [
        BlocBuilder<_AnyCubit<DataPickerLoadStatus>, DataPickerLoadStatus>(
          bloc: _controller._loadDataStatus,
          builder: (context, state) {
            if (_controller.data.isEmpty) {
              switch (state) {
                case PickerLoadStatusDone():
                  return Expanded(child: Center(child: Text("No items found")));
                case PickerLoadStatusError(:final error):
                  return Expanded(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            error,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              _controller.loadDataWithFilter(
                                _controller._searchController.text,
                              );
                            },
                            icon: Icon(
                              Icons.refresh,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                case PickerLoadStatusProgress():
                  return Expanded(
                    child: Center(
                      child: SizedBox(
                        width: 32,
                        height: 32,
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  );
              }
            }
            return SizedBox.shrink();
          },
        ),
        BlocBuilder<_AnyCubit<List<T>>, List<T>>(
          bloc: _controller._listData,
          builder: (context, state) {
            if (state.isEmpty) {
              return SizedBox.shrink();
            }
            return Expanded(
              child: ListView.builder(
                controller: _controller._scrollController,
                itemBuilder: (context, index) {
                  var isEven = (index + 1) % 2 == 0;
                  late Widget tile;
                  return BlocBuilder<_AnyCubit<List<T>>, List<T>>(
                    bloc: _controller._listSelectedData,
                    buildWhen: (previous, current) =>
                        _controller.listContains(previous, state[index]) ||
                        _controller.listContains(current, state[index]),
                    builder: (context, selected) {
                      bool isSelected = _controller.listContains(
                        selected,
                        state[index],
                      );
                      switch (widget.type.listDataBuilder) {
                        case ListDataBuilderString(
                          :final labelBuilder,
                          :final style,
                        ):
                          var lStyle = style ?? ListDataTileStyle.of(context);

                          tile = Material(
                            key: ValueKey(index),
                            color: Colors.transparent,
                            child: _DataPickerTile(
                              title: labelBuilder(state[index]),
                              isSelected: isSelected,
                              isEven: isEven,
                              style: lStyle,
                              onTap: () {
                                _controller.toggleSelected(state[index]);
                              },
                            ),
                          );
                        case ListDataBuilderCustom(:final builder):
                          tile = GestureDetector(
                            onTap: () {
                              _controller.toggleSelected(state[index]);
                            },
                            child: builder(
                              context,
                              state[index],
                              ListTileMetadata(
                                isEven: isEven,
                                selected: isSelected,
                              ),
                            ),
                          );
                      }
                      if (index + 1 == state.length) {
                        return BlocBuilder<
                          _AnyCubit<DataPickerLoadStatus>,
                          DataPickerLoadStatus
                        >(
                          bloc: _controller._loadDataStatus,
                          buildWhen: (previous, current) {
                            if (current case PickerLoadStatusProgress()) {
                              return true;
                            } else if (previous
                                case PickerLoadStatusProgress()) {
                              return true;
                            }
                            return false;
                          },
                          builder:
                              (
                                BuildContext context,
                                DataPickerLoadStatus status,
                              ) {
                                switch (status) {
                                  case PickerLoadStatusDone():
                                    return tile;
                                  case PickerLoadStatusError(:final error):
                                    return Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        tile,
                                        Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  error,
                                                  style: TextStyle(
                                                    color: Theme.of(
                                                      context,
                                                    ).colorScheme.error,
                                                  ),
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  _controller
                                                      .loadDataWithFilter(
                                                        _controller
                                                            ._searchController
                                                            .text,
                                                      );
                                                },
                                                icon: Icon(
                                                  Icons.refresh,
                                                  color: Theme.of(
                                                    context,
                                                  ).colorScheme.primary,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    );
                                  case PickerLoadStatusProgress():
                                    return Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        tile,
                                        Padding(
                                          padding: const EdgeInsets.all(20),
                                          child: SizedBox(
                                            width: 32,
                                            height: 32,
                                            child: CircularProgressIndicator(),
                                          ),
                                        ),
                                      ],
                                    );
                                }
                              },
                        );
                      } else {
                        return tile;
                      }
                    },
                  );
                },
                itemCount: state.length,
              ),
            );
          },
        ),
      ],
    );

    var cancelButton = ElevatedButton(
      style:
          widget.type.cancelButtonStyle ??
          ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.error,
            foregroundColor: Theme.of(context).colorScheme.onError,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
      child: Text(widget.type.cancelText ?? "Cancel"),
      onPressed: () => Navigator.of(context).pop(),
    );

    var selectButton = ElevatedButton(
      style:
          widget.type.selectButtonStyle ??
          ElevatedButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
      child: Text(widget.type.selectText ?? "Select"),
      onPressed: () => Navigator.of(context).pop(_controller.selected),
    );

    switch (widget.type) {
      case DataPickerPopupDialog<T>(:final width, :final height):
        final widthDefault = MediaQuery.of(context).size.width;
        final heightDefault = MediaQuery.of(context).size.height;
        return AlertDialog(
          title:
              widget.type.title ??
              (widget.type.titleText != null
                  ? Text(widget.type.titleText!)
                  : null),
          content: SizedBox(
            width: width ?? widthDefault,
            height: height ?? heightDefault,
            child: Column(
              children: [
                searchField,
                Divider(height: 20),
                Expanded(child: listView),
                Divider(),
              ],
            ),
          ),
          actions: [cancelButton, selectButton],
        );
      case DataPickerPopupPage<T>(:final withCancelButton):
        return Scaffold(
          appBar: AppBar(
            title:
                widget.type.title ??
                (widget.type.titleText != null
                    ? Text(widget.type.titleText!)
                    : null),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  searchField,
                  Divider(height: 20),
                  Expanded(child: listView),
                  SizedBox(height: 20),

                  Row(
                    spacing: withCancelButton ? 20 : 0,
                    children: [
                      withCancelButton
                          ? Expanded(child: cancelButton)
                          : SizedBox.shrink(),
                      Expanded(child: selectButton),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      case DataPickerPopupBottom<T>(:final height, :final withCancelButton):
        var titleStyle = Theme.of(
          context,
        ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold);
        var title =
            widget.type.title ??
            (widget.type.titleText != null
                ? Text(widget.type.titleText!, style: titleStyle)
                : null);
        return SizedBox(
          height: height,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title ?? SizedBox.shrink(),
                title != null ? Divider(height: 20) : SizedBox.shrink(),
                searchField,
                Divider(height: 20),
                Expanded(child: listView),
                Divider(height: 20),
                Row(
                  spacing: withCancelButton ? 20 : 0,
                  children: [
                    withCancelButton ? cancelButton : SizedBox.shrink(),
                    Expanded(child: selectButton),
                  ],
                ),
              ],
            ),
          ),
        );
    }
  }
}

class _MultiSelectDialogController<T> {
  final FutureOr<ListDataPicker<T>> Function(String filter, List<T> previous)
  loadData;
  final bool Function(T a, T b) isEqual;
  final List<T> initialSelect;

  final _AnyCubit<DataPickerLoadStatus> _loadDataStatus = _AnyCubit(
    DataPickerLoadStatus.done(),
  );

  final _AnyCubit<List<T>> _listData = _AnyCubit([]);
  final _AnyCubit<List<T>> _listSelectedData = _AnyCubit([]);
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final _Debouncer _searchDebounce = _Debouncer(
    delay: const Duration(milliseconds: 200),
  );

  _MultiSelectDialogController({
    required this.loadData,
    required this.isEqual,
    required this.initialSelect,
  }) {
    if (initialSelect.isNotEmpty == true) {
      _listSelectedData.update(initialSelect);
    }
    _scrollController.addListener(_onScroll);
  }
  List<T> get selected => _listSelectedData.state;
  List<T> get data => _listData.state;
  String _filter = "";
  bool _hasNext = false;
  int _reqDt = 0;

  bool get hasNext => _hasNext;

  Future<void> loadDataWithFilter(String filter) async {
    var micros = DateTime.now().microsecondsSinceEpoch;
    _reqDt = micros;
    if (_filter != filter) {
      _listData.update([]);
      _loadDataStatus.update(DataPickerLoadStatus.done());
    }
    _loadDataStatus.update(DataPickerLoadStatus.progress());
    _searchDebounce(() async {
      var load = await loadData(filter, _listData.state);
      if (_reqDt == micros) {
        switch (load) {
          case ListDataPickerData<T>(:final data, :final hasNext):
            _listData.update(List.from(_listData.state)..addAll(data));
            _filter = filter;
            _hasNext = hasNext;
            _loadDataStatus.update(DataPickerLoadStatus.done());
            break;
          case ListDataPickerError<T>(:final error):
            _loadDataStatus.update(DataPickerLoadStatus.error(error));
        }
      }
    });
  }

  Future<void> _onScroll() async {
    if (_scrollController.hasClients &&
        _hasNext &&
        _scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent &&
        _loadDataStatus.state is! PickerLoadStatusProgress) {
      await loadDataWithFilter(_searchController.text);
    }
  }

  /// Returns true if the list contains the data, false otherwise.
  /// This function uses the isEqual function provided in the constructor to compare elements.
  ///
  bool listContains(List<T> list, T data) {
    return list.any((element) => isEqual(element, data));
  }

  /// Toggle the selected status of the data in the list.
  /// If the data is already selected, it will be removed from the list.
  /// If the data is not selected, it will be added to the list.
  /// The isEqual function provided in the constructor is used to compare elements.
  void toggleSelected(T data) {
    if (listContains(_listSelectedData.state, data)) {
      _listSelectedData.update(
        List<T>.from(
          _listSelectedData.state,
        ).where((element) => !isEqual(data, element)).toList(),
      );
    } else {
      _listSelectedData.update(
        List<T>.from(_listSelectedData.state)..add(data),
      );
    }
  }

  void dispose() {
    _reqDt = DateTime.now().microsecondsSinceEpoch;
    _loadDataStatus.close();
    _listData.close();
    _listSelectedData.close();
    _searchController.dispose();
    _scrollController.dispose();
    _searchDebounce.dispose();
  }
}
