import 'package:freezed_annotation/freezed_annotation.dart';
part "list_data_picker.freezed.dart";

/// A sealed class that defines the result of a list data picker.
///
/// It contains two subclasses: [ListDataPickerData] and [ListDataPickerError].
///
/// * [ListDataPickerData] contains a list of data and a boolean indicating whether there is more data.
/// * [ListDataPickerError] contains an error message as a string.
@freezed
sealed class ListDataPicker<T> with _$ListDataPicker<T> {
  /// A factory constructor that creates a [ListDataPickerData] object.
  ///
  /// * [data]: a list of data to be returned.
  /// * [hasNext]: a boolean indicating whether there is more data. Defaults to false.
  ///
  /// This constructor is used to create a [ListDataPickerData] object, which is used
  /// to indicate that data has been loaded successfully.
  const factory ListDataPicker.data(
    List<T> data, {
    @Default(false) bool hasNext,
  }) = ListDataPickerData;

  /// A factory constructor that creates a [ListDataPickerError] object.
  ///
  /// * [error]: an error message as a string.
  ///
  /// This constructor is used to create a [ListDataPickerError] object, which is used
  /// to indicate that an error occurred when loading data.
  const factory ListDataPicker.error(String error) = ListDataPickerError;
}
