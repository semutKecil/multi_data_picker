import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_data_picker/list_data_builder.dart';
import 'package:multi_data_picker/list_data_picker.dart';
part 'data_picker_popup_type.freezed.dart';

typedef ListDataPickerCallback<T> =
    FutureOr<ListDataPicker<T>> Function(String filter, List<T> previous);

/// A sealed class that defines the type of the popup dialog of the data picker.
///
/// There are three types of popup dialog: dialog, page, and bottom.
///
/// See [DataPickerPopupDialog] for a dialog popup, see [DataPickerPopupPage] for a page popup,
/// and see [DataPickerPopupBottom] for a bottom popup.
@freezed
sealed class DataPickerPopupType<T> with _$DataPickerPopupType<T> {
  /// A factory to create a dialog popup dialog type.
  ///
  /// The properties of the dialog popup dialog type are:
  /// * [loadData]: the callback function to load data from the data picker.
  /// * [listDataBuilder]: the builder of the list data.
  /// * [width]: the width of the dialog.
  /// * [height]: the height of the dialog.
  /// * [title]: the title of the dialog.
  /// * [titleText]: the text of the title of the dialog.
  /// * [cancelText]: the text of the cancel button of the dialog.
  /// * [selectText]: the text of the select button of the dialog.
  /// * [cancelButtonStyle]: the style of the cancel button of the dialog.
  /// * [selectButtonStyle]: the style of the select button of the dialog.
  /// * [searchInputDecoration]: the decoration of the search input of the dialog.
  /// * [searchAutoFocus]: whether the search input of the dialog should autofocus.
  ///
  /// Returns a [DataPickerPopupDialog] with the given properties.
  const factory DataPickerPopupType.dialog({
    required ListDataPickerCallback<T> loadData,
    required ListDataBuilder<T> listDataBuilder,
    double? width,
    double? height,
    Widget? title,
    String? titleText,
    String? cancelText,
    String? selectText,
    ButtonStyle? cancelButtonStyle,
    ButtonStyle? selectButtonStyle,
    InputDecoration? searchInputDecoration,
    @Default(false) bool searchAutoFocus,
  }) = DataPickerPopupDialog<T>;

  /// A factory to create a page popup dialog type.
  ///
  /// The properties of the page popup dialog type are:
  /// * [loadData]: the callback function to load data from the data picker.
  /// * [listDataBuilder]: the builder of the list data.
  /// * [title]: the title of the page.
  /// * [titleText]: the text of the title of the page.
  /// * [cancelText]: the text of the cancel button of the page.
  /// * [selectText]: the text of the select button of the page.
  /// * [cancelButtonStyle]: the style of the cancel button of the page.
  /// * [selectButtonStyle]: the style of the select button of the page.
  /// * [withCancelButton]: whether the page should have a cancel button.
  /// * [searchInputDecoration]: the decoration of the search input of the page.
  /// * [searchAutoFocus]: whether the search input of the page should autofocus.
  ///
  /// Returns a [DataPickerPopupPage] with the given properties.
  const factory DataPickerPopupType.page({
    required ListDataPickerCallback<T> loadData,
    required ListDataBuilder<T> listDataBuilder,
    Widget? title,
    String? titleText,
    String? cancelText,
    String? selectText,
    ButtonStyle? cancelButtonStyle,
    ButtonStyle? selectButtonStyle,
    @Default(false) bool withCancelButton,
    InputDecoration? searchInputDecoration,
    @Default(true) bool searchAutoFocus,
  }) = DataPickerPopupPage<T>;

  /// A factory to create a bottom popup dialog type.
  ///
  /// The properties of the bottom popup dialog type are:
  /// * [loadData]: the callback function to load data from the data picker.
  /// * [listDataBuilder]: the builder of the list data.
  /// * [height]: the height of the bottom popup dialog.
  /// * [title]: the title of the bottom popup dialog.
  /// * [titleText]: the text of the title of the bottom popup dialog.
  /// * [cancelText]: the text of the cancel button of the bottom popup dialog.
  /// * [selectText]: the text of the select button of the bottom popup dialog.
  /// * [cancelButtonStyle]: the style of the cancel button of the bottom popup dialog.
  /// * [selectButtonStyle]: the style of the select button of the bottom popup dialog.
  /// * [withCancelButton]: whether the bottom popup dialog should have a cancel button.
  /// * [searchInputDecoration]: the decoration of the search input of the bottom popup dialog.
  /// * [searchAutoFocus]: whether the search input of the bottom popup dialog should autofocus.
  ///
  /// Returns a [DataPickerPopupBottom] with the given properties.
  const factory DataPickerPopupType.bottom({
    required ListDataPickerCallback<T> loadData,
    required ListDataBuilder<T> listDataBuilder,
    double? height,
    Widget? title,
    String? titleText,
    String? cancelText,
    String? selectText,
    ButtonStyle? cancelButtonStyle,
    ButtonStyle? selectButtonStyle,
    @Default(false) bool withCancelButton,
    InputDecoration? searchInputDecoration,
    @Default(false) bool searchAutoFocus,
  }) = DataPickerPopupBottom<T>;
}
