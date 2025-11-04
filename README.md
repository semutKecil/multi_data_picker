# 🧮 MultiDataPicker<T>

A customizable Flutter widget for selecting multiple values from a list of options. Designed for flexibility, idiomatic API usage, and seamless UI integration.

![Pub Version](https://img.shields.io/pub/v/multi_data_picker) ![Platform](https://img.shields.io/badge/platform-flutter-blue)

---

## ✨ Features

- ✅ Generic support for any data type `T`
- 🧱 Custom display builder for selected items
- 🪟 Configurable popup picker type (`dialog`, `page`, `bottom`)
- 🎛️ Optional controller for external state management
- 🧩 Initial value support
- 📐 Fine-grained layout and padding controls
- 🔄 Hooks for change detection
- 📏 Height and spacing customization
- 🧮 Compensation options for layout alignment

---

## 📦 Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  multi_data_picker: ^<latest_version>
```

Then run:

```bash
flutter pub get
```

---

## 🚀 Usage

```dart
MultiDataPicker<Map<String, dynamic>>(
  initialValue: [data[0], data[1]],
  isEqual: (a, b) => a["id"] == b["id"],
  decoration: InputDecoration(
    labelText: "Input Label",
    prefixIcon: Icon(Icons.location_city),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(5),
    ),
  ),
  minHeight: 100,
  maxHeight: 150,
  dataDisplayBuilder: DataDisplayBuilder.string(
    labelBuilder: (data) => data['name'] ?? "-",
  ),
  popupType: DataPickerPopupType.bottom(
    loadData: loadData,
    listDataBuilder: ListDataBuilder.string(
      labelBuilder: (data) => data['name'] ?? "-",
    ),
  ),
)
```

---

## 🧱 Constructor Parameters

| Parameter | Type | Description |
|----------|------|-------------|
| `dataDisplayBuilder` | `DataDisplayBuilder<T>` | Defines how each selected item is rendered ([see options](#display-builder)) |
| `popupType` | `DataPickerPopupType<T>` | Controls the popup dialog behavior |
| `isEqual` | `bool Function(T a, T b)?` | Optional equality function for comparing items. **Required when controller not exist** |
| `controller` | `MultiPickerController<T>?` | Optional controller to manage selected values |
| `initialValue` | `List<T>?` | Initial selected values |
| `decoration` | `InputDecoration` | Input field decoration |
| `displayPadding` | `EdgeInsets` | Padding around displayed items |
| `onChanged` | `Function(List<T>)?` | Callback when selection changes |
| `displaySpacing` | `double` | Horizontal spacing between items |
| `displayRunSpacing` | `double` | Vertical spacing between wrapped items |
| `minHeight` / `maxHeight` | `double?` | Height constraints |
| `topCompensation`, `leftCompensation`, `rightCompensation` | `double?` | Layout compensation values |
| `errorHeightCompensation`, `herlperHeightCompensation` | `double?` | Compensation for error/helper text spacing |

---

## 🧩 Display Builder

The `DataDisplayBuilder<T>` sealed class defines how each selected item is rendered inside the picker. It supports two modes:

### 1. `DataDisplayBuilder.string`

Renders each item as a `Chip` with customizable appearance.

---
| Parameter             | Type                          | Description |
|----------------------|-------------------------------|-------------|
| `labelBuilder`        | `String Function(T data)`      | Required. Builds the label text for each item |
| `backgroundColor`     | `Color?`                       | Background color of the chip |
| `labelStyle`          | `TextStyle?`                   | Style applied to the label text |
| `shape`               | `OutlinedBorder?`              | Shape of the chip |
| `deleteIconColor`     | `Color?`                       | Color of the delete icon |
| `deleteIcon`          | `Widget?`                      | Custom delete icon widget |
| `avatar`              | `Widget?`                      | Avatar widget displayed on the chip |
| `avatarBoxConstraints`| `BoxConstraints?`              | Constraints for the avatar widget |
| `labelPadding`        | `EdgeInsetsGeometry?`          | Padding around the label text |
| `side`                | `BorderSide` (default: none)   | Border side configuration |
---

#### Example:

```dart
DataDisplayBuilder.string(
  labelBuilder: (data) => data['name'] ?? "-",
  backgroundColor: Colors.blue.shade50,
  labelStyle: TextStyle(fontWeight: FontWeight.bold),
  shape: StadiumBorder(),
  deleteIconColor: Colors.red,
  deleteIcon: Icon(Icons.close),
  avatar: CircleAvatar(child: Text("A")),
  avatarBoxConstraints: BoxConstraints.tight(Size(24, 24)),
  labelPadding: EdgeInsets.symmetric(horizontal: 8),
  side: BorderSide(color: Colors.grey),
)
```

### 2. `DataDisplayBuilder.custom`

Provides full control over rendering via a custom widget builder.

---
| Parameter | Type | Description |
|----------|------|-------------|
| `builder` | `Widget Function(BuildContext context, T data, void Function() delete)` | Required. Custom widget builder for rendering each item with delete support |
---

#### Example:

```dart
DataDisplayBuilder.custom(
  builder: (context, data, delete) {
    return Row(
      children: [
        Text(data['name']),
        IconButton(
          icon: Icon(Icons.delete),
          onPressed: delete,
        ),
      ],
    );
  },
)
```

Use this when you need advanced layout or interactivity beyond the default `Chip` UI.

---

## 🪟 Popup Types

The `popupType` parameter defines how the selection UI is presented. It uses a sealed class `DataPickerPopupType<T>` with three variants:

### 1. `dialog`

Displays a modal dialog with optional title, search input, and action buttons.

```dart
DataPickerPopupType.dialog(
  loadData: loadData,
  listDataBuilder: ListDataBuilder.string(
    labelBuilder: (data) => data['name'] ?? "-",
  ),
  titleText: "Dialog Title",
)
```

### 2. `page`

Displays a full-screen modal page.

```dart
DataPickerPopupType.page(
  loadData: loadData,
  listDataBuilder: ListDataBuilder.string(
    labelBuilder: (data) => data['name'] ?? "-",
  ),
  titleText: 'Choose Options',
  withCancelButton: true,
)
```

### 3. `bottom`

Shows a bottom sheet for quick, contextual selection.

```dart
DataPickerPopupType.bottom(
  loadData: loadData,
  listDataBuilder: ListDataBuilder.string(
    labelBuilder: (data) => data['name'] ?? "-",
  ),
  titleText: 'Choose Options',
  withCancelButton: true,
)
```

---

## 🤝 Contributing

We welcome contributions! Feel free to open issues, submit pull requests, or suggest improvements.

```bash
git clone https://github.com/your-org/multi_data_picker.git
```

---

## 📄 License

MIT © Septiyan Herlan

---
