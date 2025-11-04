import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_picker_load_status.freezed.dart';

/// A sealed class that defines the status of the data picker.
///
/// It is used to notify the user of the status of the data picker.
///
/// There are three types of status: done, error, and progress.
///
/// See [DataPickerLoadStatus.done] for a done status, see [DataPickerLoadStatus.error] for an error status, and see [DataPickerLoadStatus.progress] for a progress status.
@freezed
sealed class DataPickerLoadStatus with _$DataPickerLoadStatus {
  /// A done status of the data picker.
  ///
  /// This status is used to notify the user that the data picker has finished loading.
  const factory DataPickerLoadStatus.done() = PickerLoadStatusDone;

  /// An error status of the data picker.
  ///
  /// This status is used to notify the user of an error that occurred while loading data.
  ///
  /// The error message is provided as a parameter.
  const factory DataPickerLoadStatus.error(String error) =
      PickerLoadStatusError;

  /// A progress status of the data picker.
  ///
  /// This status is used to notify the user that the data picker is currently loading data.
  const factory DataPickerLoadStatus.progress() = PickerLoadStatusProgress;
}
