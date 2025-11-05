import 'package:example/indonesia_locations.dart';
import 'package:flutter/material.dart';
import 'package:multi_data_picker/data_display_builder.dart';
import 'package:multi_data_picker/data_picker_popup_type.dart';
import 'package:multi_data_picker/list_data_builder.dart';
import 'package:multi_data_picker/list_data_picker.dart';
import 'package:multi_data_picker/multi_data_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? errorText;

  final MultiPickerController<Map<String, dynamic>> controller =
      MultiPickerController(
        isEquals: (a, b) {
          return a["id"] == b["id"];
        },
      );

  Future<ListDataPicker<Map<String, dynamic>>> loadData(
    String filter,
    List<Map<String, dynamic>> previous,
  ) async {
    await Future.delayed(Duration(milliseconds: 500));
    int lastId = 0;
    var data = indonesiaLocations;
    if (filter.isNotEmpty) {
      data = indonesiaLocations.where((element) {
        var name = element["name"] as String;
        return name.toLowerCase().contains(filter.toLowerCase());
      }).toList();
    }
    if (previous.isNotEmpty) {
      lastId = previous.last["id"] as int;
    }
    // return ListDataPicker.error("Failed to load data");
    return ListDataPicker.data(
      data
          .where((element) => (element["id"] as int) > lastId)
          .take(20)
          .toList(),
      hasNext: data.length > 20,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controller.toggle(indonesiaLocations[10]);
                    },
                    child: Text("Toggle data"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      controller.clear();
                    },
                    child: Text("clear"),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 5),
                      MultiDataPicker<Map<String, dynamic>>(
                        initialValue: [
                          indonesiaLocations[0],
                          indonesiaLocations[1],
                        ],
                        isEqual: (a, b) => a["id"] == b["id"],
                        decoration: InputDecoration(
                          labelText: "No Controller",
                          prefixIcon: Icon(Icons.location_city, size: 24),
                          hintText: "Pick Multiple Region",
                          helperText: "This is BottomSheet mode with border",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        minHeight: 100,
                        dataDisplayBuilder: DataDisplayBuilder.string(
                          labelBuilder: (data) {
                            return data['name'] ?? "-";
                          },
                        ),
                        popupType: DataPickerPopupType.bottom(
                          loadData: loadData,
                          listDataBuilder: ListDataBuilder.string(
                            labelBuilder: (data) => data['name'] ?? "-",
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      MultiDataPicker<Map<String, dynamic>>(
                        controller: controller,
                        decoration: InputDecoration(
                          labelText: "Multi Select Region",
                          prefixIcon: Icon(Icons.location_city, size: 24),
                          hintText: "Pick Multiple Region",
                          helperText: "This is Page mode with no border",
                          errorText: errorText,
                        ),
                        maxHeight: 150,
                        dataDisplayBuilder: DataDisplayBuilder.string(
                          labelBuilder: (data) {
                            return data['name'] ?? "-";
                          },
                        ),
                        popupType: DataPickerPopupType.page(
                          loadData: loadData,
                          listDataBuilder: ListDataBuilder.string(
                            labelBuilder: (data) => data['name'] ?? "-",
                          ),
                          titleText: "Pilih Provinsi",
                        ),
                        onChanged: (value) {
                          if (value.length > 5) {
                            if (errorText == null) {
                              setState(() {
                                errorText = "Max selection is 5";
                              });
                            }
                          } else if (errorText != null) {
                            setState(() {
                              errorText = null;
                            });
                          }
                        },
                      ),
                      SizedBox(height: 20),
                      MultiDataPicker<Map<String, dynamic>>(
                        controller: controller,
                        decoration: InputDecoration(
                          labelText: "Multi Select Region",
                          prefixIcon: Icon(Icons.location_city, size: 24),
                          hintText: "Pick Multiple Region",
                          helperText: "This is Dialog mode with border",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        maxHeight: 150,
                        dataDisplayBuilder: DataDisplayBuilder.string(
                          labelBuilder: (data) {
                            return data['name'] ?? "-";
                          },
                        ),
                        popupType: DataPickerPopupType.dialog(
                          loadData: loadData,
                          listDataBuilder: ListDataBuilder.string(
                            labelBuilder: (data) => data['name'] ?? "-",
                          ),
                          titleText: "Pilih Provinsi",
                        ),
                      ),

                      SizedBox(height: 20),
                      MultiDataPicker<Map<String, dynamic>>(
                        controller: controller,
                        decoration: InputDecoration(
                          labelText: "Multi Select Region",
                          prefixIcon: Icon(Icons.location_city, size: 24),
                          hintText: "Pick Multiple Region",
                          helperText: "This is BottomSheet mode with border",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        maxHeight: 150,
                        dataDisplayBuilder: DataDisplayBuilder.string(
                          labelBuilder: (data) {
                            return data['name'] ?? "-";
                          },
                        ),
                        popupType: DataPickerPopupType.bottom(
                          loadData: loadData,
                          listDataBuilder: ListDataBuilder.string(
                            labelBuilder: (data) => data['name'] ?? "-",
                          ),
                        ),
                      ),

                      SizedBox(height: 20),
                      MultiDataPicker<Map<String, dynamic>>(
                        controller: controller,
                        decoration: InputDecoration(
                          labelText: "Custom Multi Select Region",
                          prefixIcon: Icon(Icons.location_city, size: 24),
                          hintText: "Pick Multiple Region",
                          helperText: "This is BottomSheet mode with border",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        maxHeight: 150,
                        dataDisplayBuilder: DataDisplayBuilder.custom(
                          builder: (context, data, delete) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Theme.of(
                                  context,
                                ).colorScheme.primaryContainer,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.local_cafe_outlined, size: 24),
                                    SizedBox(width: 5),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          data['name'] ?? "-",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          data['province'] ?? "-",
                                          style: TextStyle(fontSize: 10),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 32,
                                      height: 32,
                                      child: IconButton(
                                        visualDensity: VisualDensity.compact,
                                        icon: Icon(Icons.clear, size: 16),
                                        onPressed: () {
                                          delete();
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                        popupType: DataPickerPopupType.bottom(
                          loadData: loadData,
                          listDataBuilder: ListDataBuilder.custom(
                            builder: (context, data, metadata) {
                              return Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors.grey.shade300,
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Material(
                                  child: ListTile(
                                    tileColor: metadata.selected
                                        ? Colors.blue
                                        : Colors.transparent,
                                    textColor: metadata.selected
                                        ? Colors.white
                                        : Colors.black,
                                    iconColor: metadata.selected
                                        ? Colors.white
                                        : Colors.black,
                                    leading: Icon(Icons.local_cafe_outlined),
                                    title: Text(data['name'] ?? "-"),
                                    subtitle: Text(
                                      "Province : ${data['province'] ?? "-"}",
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
