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

---

Let me know if you'd like to scaffold a migration guide or update the README to reflect the new usage pattern.


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
