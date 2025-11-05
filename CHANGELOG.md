## 0.2.2 – 2025-11-05

- Updated `README.md`:
  - Added **Table of Contents** with shortcut links for easier navigation
  - Documented how to implement and return results from `loadData` callback
  - Explained usage of `ListDataPicker.data` and `ListDataPicker.error`
  - Clarified `hasNext` behavior for infinite scroll support

## 0.2.1 – 2025-11-05

#### 🎨 UI Updates
- Updated chip background and text colors for better contrast and visual consistency with Select2-style tags.
- Refined list item background colors for normal, hover, selected, and hovered+selected states in both light and dark themes.

#### 📚 Documentation
- Replaced outdated screenshots in the README to reflect the new visual style and layout improvements.

## 0.2.0 – 2025-11-04

### ✨ Added
- Migrated to [`any_field`](https://pub.dev/packages/any_field) `^0.1.0` as the base wrapper for consistent InputDecorator behavior.
- Unified label, hint, and error styling via `any_field`, removing manual decoration logic.

### 🔧 Changed
- Refactored internal layout to rely on `any_field`'s `InputDecoration` handling.
- Picker content now aligns natively with form fields, improving UX consistency across platforms.

### 🧹 Removed
- All `compensation` parameters and layout hacks for vertical alignment.
- Deprecated `displayPadding` — now handled idiomatically via `contentPadding` in `any_field`.

## 0.1.0 - 2025-11-04

- Initial release of `multi_data_picker`
- Support for generic data type `T`
- Three popup types: `dialog`, `page`, `bottom`
- `ListDataBuilder.string` and `ListDataBuilder.custom` for display customization
- `MultiPickerController` for external state management
- Initial value support
- TextField-style appearance via `InputDecoration`
- Change detection hooks
- Layout and spacing customization
- Tile styling via `ListDataTileStyle`
