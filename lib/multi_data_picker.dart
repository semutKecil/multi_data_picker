/// A Flutter plugin to pick multiple data types such as images, videos, and
/// documents from the device gallery or take a new photo/video.
/// run build_runner first before building
/// dart run build_runner build -d
/// or
/// dart run build_runner watch -d
/// This plugin provides a simple and easy-to-use API to handle the multi data
/// picking process. It handles the permission request and provides a simple
/// callback to get the selected data.
///
/// Example code:
/// ```dart
/// MultiDataPicker<Map<String, dynamic>>(
///   initialValue: [
///     data[0],
///     data[1],
///   ],
///   isEqual: (a, b) => a["id"] == b["id"],
///   decoration: InputDecoration(
///     labelText: "No Controller",
///     prefixIcon: Icon(Icons.location_city),
///     hintText: "Pick Multiple Region",
///     helperText: "This is BottomSheet mode with border",
///     border: OutlineInputBorder(
///       borderRadius: BorderRadius.circular(5),
///     ),
///   ),
///   minHeight: 100,
///   dataDisplayBuilder: DataDisplayBuilder.string(
///     labelBuilder: (data) {
///       return data['name'] ?? "-";
///     },
///   ),
///   popupType: DataPickerPopupType.bottom(
///     loadData: loadData,
///     listDataBuilder: ListDataBuilder.string(
///       labelBuilder: (data) => data['name'] ?? "-",
///     ),
///   ),
/// )
/// ```
library;

import 'dart:async';

import 'package:any_field/any_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_data_picker/data_picker_load_status.dart';
import 'package:multi_data_picker/data_picker_popup_type.dart';
import 'package:multi_data_picker/data_display_builder.dart';
import 'package:multi_data_picker/list_data_builder.dart';
import 'package:multi_data_picker/list_data_picker.dart';
import 'package:multi_data_picker/list_data_tile_style.dart';
part 'data_list_dialog.dart';

/// The `MultiDataPicker` class in Dart is a widget that allows users to select multiple values from a
/// list of options with customizable display and behavior settings.
class MultiDataPicker<T> extends StatefulWidget {
  final DataDisplayBuilder<T> dataDisplayBuilder;
  final DataPickerPopupType<T> popupType;
  final bool Function(T a, T b)? isEqual;
  final MultiPickerController<T>? controller;
  final List<T>? initialValue;
  final InputDecoration decoration;
  final Function(List<T> value)? onChanged;
  final double displaySpacing;
  final double displayRunSpacing;
  final double? minHeight;
  final double? maxHeight;

  /// A widget that allows the user to select multiple values from a list of options.
  ///
  /// The widget takes a number of parameters:
  ///
  /// * [dataDisplayBuilder]: A function that defines how a piece of data should be displayed.
  /// * [popupType]: The type of the popup dialog to be shown when the user taps on the widget.
  /// * [isEqual]: A function that defines whether two values are equal.
  /// * [controller]: The controller that manages the values selected by the user.
  /// * [initialValue]: The initial values to be displayed in the widget.
  /// * [decoration]: The decoration to be applied to the widget.
  /// * [onChanged]: A function that is called when the user selects or deselects a value.
  /// * [displaySpacing]: The spacing between the values displayed in the widget.
  /// * [displayRunSpacing]: The spacing between the values displayed in the widget when they are wrapped to the next line.
  /// * [minHeight], [maxHeight]: The minimum and maximum height of the widget.
  const MultiDataPicker({
    super.key,
    required this.dataDisplayBuilder,
    required this.popupType,
    this.isEqual,
    this.controller,
    this.initialValue,
    this.decoration = const InputDecoration(),
    this.onChanged,
    this.displaySpacing = 5,
    this.displayRunSpacing = 5,
    this.minHeight,
    this.maxHeight,
  });

  @override
  State<MultiDataPicker<T>> createState() => _MultiDataPickerState<T>();
}

class _MultiDataPickerState<T> extends State<MultiDataPicker<T>> {
  final AnyValueController<List<T>> _anyFieldController = AnyValueController(
    null,
  );
  late final MultiPickerController<T> _controller;
  bool _ownController = false;
  final _queue = _FunctionQueue();

  @override
  void initState() {
    if (widget.controller == null) {
      if (widget.isEqual == null) {
        throw ArgumentError("isEqual cannot be null when controller is null");
      }
      _controller = MultiPickerController<T>(
        initialValue: widget.initialValue ?? [],
        isEquals: widget.isEqual!,
      );
      _ownController = true;
    } else {
      _controller = widget.controller!;
    }
    _anyFieldController.value = _controller.values;
    super.initState();
    _anyFieldController.addListener(_anyFieldControllerUpdate);
    _controller.addListener(_controllerUpdate);
  }

  @override
  void dispose() {
    _controller.removeListener(_controllerUpdate);
    if (_ownController) _controller.dispose();
    _anyFieldController.dispose();
    super.dispose();
  }

  void _controllerUpdate() {
    _queue.add(() {
      _anyFieldController.removeListener(_anyFieldControllerUpdate);
      if (_controller.values.isEmpty) {
        _anyFieldController.value = null;
      } else {
        _anyFieldController.value = _controller.values;
      }
      _anyFieldController.addListener(_anyFieldControllerUpdate);
      widget.onChanged?.call(_controller.values);
    });
  }

  void _anyFieldControllerUpdate() {
    _queue.add(() {
      _controller.removeListener(_controllerUpdate);
      _controller.values = _anyFieldController.value ?? [];
      _controller.addListener(_controllerUpdate);
      widget.onChanged?.call(_controller.values);
    });
  }

  Future<void> showPopup(List<T>? value) async {
    List<T>? res;
    switch (widget.popupType) {
      case DataPickerPopupDialog<T>():
        res = await showDialog<List<T>>(
          context: context,
          builder: (context) => _DataListDialog<T>(
            type: widget.popupType,
            initialSelect: value ?? [],
            isEqual: _controller.isEquals,
          ),
        );
        break;
      case DataPickerPopupPage<T>():
        res = await Navigator.of(context).push(
          MaterialPageRoute<List<T>>(
            builder: (context) => _DataListDialog<T>(
              type: widget.popupType,
              initialSelect: value ?? [],
              isEqual: _controller.isEquals,
            ),
          ),
        );
      case DataPickerPopupBottom<T>():
        res = await showModalBottomSheet<List<T>>(
          context: context,
          builder: (context) => _DataListDialog<T>(
            type: widget.popupType,
            initialSelect: value ?? [],
            isEqual: _controller.isEquals,
          ),
        );
    }

    if (res != null) {
      _anyFieldController.value = res;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnyField<List<T>>(
      decoration: widget.decoration.copyWith(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 5),
          child: IconButton(
            onPressed: () {
              showPopup(_anyFieldController.value);
            },
            icon: Icon(Icons.arrow_drop_down, size: 24),
          ),
        ),
      ),
      controller: _anyFieldController,
      maxHeight: widget.maxHeight,
      minHeight: widget.minHeight,
      onTap: showPopup,
      displayBuilder: (context, value) {
        return Wrap(
          spacing: widget.displaySpacing,
          runSpacing: widget.displayRunSpacing,
          children: List.generate(value.length, (index) {
            switch (widget.dataDisplayBuilder) {
              case DataDisplayBuilderString<T>(
                :final labelBuilder,
                :final backgroundColor,
                :final labelStyle,
                :final shape,
                :final deleteIconColor,
                :final deleteIcon,
                :final avatar,
                :final avatarBoxConstraints,
                :final labelPadding,
                :final side,
              ):
                return SizedBox(
                  height: 32,
                  child: Chip(
                    backgroundColor: backgroundColor ?? Color(0xFFE4E4E4),
                    labelStyle:
                        labelStyle ??
                        TextStyle(color: Color(0xFF333333), fontSize: 12),
                    elevation: 0,
                    avatar: avatar,
                    avatarBoxConstraints: avatarBoxConstraints,
                    labelPadding: labelPadding,
                    visualDensity: VisualDensity.compact,
                    side: side,
                    deleteButtonTooltipMessage: "",
                    shape:
                        shape ??
                        RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(5),
                          side: BorderSide.none,
                        ),
                    deleteIconColor: deleteIconColor ?? Color(0xFF555555),
                    deleteIcon: deleteIcon ?? Icon(Icons.close, size: 16),
                    onDeleted: () {
                      _anyFieldController.value = List.from(
                        _anyFieldController.value ?? [],
                      )..removeAt(index);
                    },
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    label: Text(labelBuilder(value[index])),
                  ),
                );
              case DataDisplayBuilderWidget<T>(:final builder):
                return builder(context, value[index], () {
                  _anyFieldController.value = List.from(
                    _anyFieldController.value ?? [],
                  )..removeAt(index);
                });
            }
          }),
        );
      },
    );
  }
}

class _AnyCubit<T> extends Cubit<T> {
  _AnyCubit(super.data);
  void update(T data) {
    emit(data);
  }
}

class _Debouncer {
  final Duration delay;
  VoidCallback? action;
  Timer? _timer;

  _Debouncer({required this.delay});

  void call(VoidCallback callback) {
    _timer?.cancel();
    _timer = Timer(delay, callback);
  }

  void dispose() {
    _timer?.cancel();
  }
}

class _DataPickerTile extends StatelessWidget {
  final bool isSelected;
  final bool isEven;
  final ListDataTileStyle style;
  final String title;
  final VoidCallback onTap;
  const _DataPickerTile({
    required this.isSelected,
    required this.isEven,
    required this.style,
    required this.title,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: style.withCheckboxIcon
          ? (isSelected
                ? style.selectedCheckboxIcon ?? Icon(Icons.check_box_outlined)
                : style.checkboxIcon ?? Icon(Icons.check_box_outline_blank))
          : null,
      trailing: style.trailingIcon,
      hoverColor: isSelected
          ? (isEven
                ? style.selectedColor.evenHoverBackgroundColor
                : style.selectedColor.hoverBackgroundColor)
          : (isEven
                ? style.evenHoverBackgroundColor
                : style.hoverBackgroundColor),
      tileColor: isSelected
          ? (isEven
                ? style.selectedColor.evenBackgroundColor
                : style.selectedColor.backgroundColor)
          : (isEven ? style.evenBackgroundColor : style.backgroundColor),
      textColor: isSelected
          ? (isEven
                ? style.selectedColor.evenForegroundColor
                : style.selectedColor.foregroundColor)
          : (isEven ? style.evenForegroundColor : style.foregroundColor),
      title: Text(title, style: style.textStyle),
      onTap: onTap,
    );
  }
}

/// A multi-selection controller.
///
/// This class is used to control the selection of a list of items.
///
/// It provides methods to select, deselect, toggle, and clear the selection.
///
/// It also provides a getter to retrieve the current selection.
///
/// The selection is compared using the provided [isEquals] function.
///
/// A typical usage of this class is to create an instance of it and
/// pass it to a widget that needs to manage the selection of a list of items.
class MultiPickerController<T> extends ChangeNotifier {
  final bool Function(T a, T b) isEquals;
  late final List<T> _selectedItems;
  final List<T>? initialValue;

  /// Creates a multi-selection controller.
  ///
  /// The controller is used to manage the selection of a list of items.
  ///
  /// The selection is compared using the provided [isEquals] function.
  ///
  /// A typical usage of this class is to create an instance of it and
  /// pass it to a widget that needs to manage the selection of a list of items.
  ///
  /// The constructor takes two parameters:
  ///
  /// * [isEquals]: a function that compares two items and returns true if they are equal.
  /// * [initialValue]: an optional parameter that sets the initial selection of the controller.
  ///
  /// If [initialValue] is not provided, the controller will be empty.
  MultiPickerController({required this.isEquals, this.initialValue}) {
    _selectedItems = initialValue ?? [];
  }

  /// Retrieves the current selection of the controller.
  ///
  /// This getter returns a list of the currently selected items.
  ///
  /// The list is unmodifiable, meaning that it cannot be changed from the outside.
  ///
  /// See also [select], [deselect], [toggle], and [clear].
  List<T> get values => List.unmodifiable(_selectedItems);

  /// Sets the current selection of the controller.
  ///
  /// This setter takes a list of items and sets the current selection to it.
  ///
  /// It clears the current selection and adds all the items from the provided list.
  ///
  /// It notifies its listeners after setting the selection.
  ///
  /// See also [select], [deselect], [toggle], and [clear].
  set values(List<T> newValues) {
    _selectedItems
      ..clear()
      ..addAll(newValues);
    notifyListeners();
  }

  /// Checks if the given item is selected.
  ///
  /// Returns true if the item is selected, and false otherwise.
  ///
  /// See also [select], [deselect], [toggle], and [clear].
  bool isSelected(T item) =>
      _selectedItems.any((element) => isEquals(element, item));

  /// Selects an item.
  ///
  /// If the item is not already selected, this method adds it to the selection and
  /// notifies its listeners.
  ///
  /// See also [deselect], [toggle], and [clear].
  void select(T item) {
    if (!isSelected(item)) {
      _selectedItems.add(item);
      notifyListeners();
    }
  }

  /// Deselects an item.
  ///
  /// If the item is selected, this method removes it from the selection and
  /// notifies its listeners.
  ///
  /// See also [select], [toggle], and [clear].
  void deselect(T item) {
    final index = _selectedItems.indexWhere(
      (element) => isEquals(element, item),
    );
    if (index != -1) {
      _selectedItems.removeAt(index);
      notifyListeners();
    }
  }

  /// Toggles the selection of an item.
  ///
  /// If the item is selected, it will be deselected. If the item is not selected,
  /// it will be selected.
  void toggle(T item) {
    isSelected(item) ? deselect(item) : select(item);
  }

  /// Clears the selection of the controller.
  ///
  /// If the controller has selected items, this method clears the selection and
  /// notifies its listeners.
  ///
  /// See also [select], [deselect], [toggle], and [values].
  void clear() {
    if (_selectedItems.isNotEmpty) {
      _selectedItems.clear();
      notifyListeners();
    }
  }
}

class _FunctionQueue {
  final List<Function()> _queue = [];
  bool _isRunning = false;

  void add(Function() task) {
    _queue.add(task);
    _runNext();
  }

  void _runNext() {
    if (_isRunning || _queue.isEmpty) return;

    _isRunning = true;
    final task = _queue.removeAt(0);

    Future.sync(() => task()).whenComplete(() {
      _isRunning = false;
      _runNext();
    });
  }

  void clear() => _queue.clear();

  bool get isIdle => !_isRunning && _queue.isEmpty;
}
