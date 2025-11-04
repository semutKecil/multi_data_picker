# MultiDataPicker<T>

A customizable Flutter widget for selecting multiple values from a list of options. Designed for flexibility, idiomatic API usage, and seamless UI integration.

## ✨ Features

- Generic support for any data type `T`
- Custom display builder for selected items
- Configurable popup picker type
- Optional controller for external state management
- Initial value support
- Fine-grained layout and padding controls
- Hooks for change detection
- Height and spacing customization
- Compensation options for layout alignment

## 🚀 Usage

```dart
MultiDataPicker<Map<String, dynamic>>(
  initialValue: [
    data[0],
    data[1],
  ],
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
```

## 🧱 Constructor Parameters

| Parameter | Type | Description |
|----------|------|-------------|
| `dataDisplayBuilder` | `DataDisplayBuilder<T>` | Defines how each selected item is rendered |
| `popupType` | `DataPickerPopupType<T>` | Controls the popup dialog behavior |
| `isEqual` | `bool Function(T a, T b)?` | Optional equality function for comparing items |
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


## 🪟 Popup Types

The `popupType` parameter defines how the selection UI is presented. It uses a sealed class `DataPickerPopupType<T>` with three variants:

### 1. `DataPickerPopupType.dialog`

Displays a modal dialog with optional title, search input, and action buttons.

```dart
DataPickerPopupType.dialog(
  loadData: loadData,
  listDataBuilder: ListDataBuilder.string(
    labelBuilder: (data) => data['name'] ?? "-",
  ),
  titleText: "Dialog Title",
),
```

### 2. `DataPickerPopupType.page`

Displays a modal dialog with optional title, search input, and action buttons.

```dart
DataPickerPopupType.page(
  loadData: fetchItems,
  listDataBuilder: myListBuilder,
  titleText: 'Choose Options',
  withCancelButton: true,
)
```

### 3. `DataPickerPopupType.bottom`

Shows a bottom sheet for quick, contextual selection.

```dart
DataPickerPopupType.bottom(
  loadData: fetchItems,
  listDataBuilder: myListBuilder,
  titleText: 'Choose Options',
  withCancelButton: true,
)
```