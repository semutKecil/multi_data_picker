import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_data_picker/selected_tile_color.dart';
part 'list_data_tile_style.freezed.dart';

/// A sealed class that defines the style of a list tile.
///
/// It contains a constructor that takes in the following parameters:
///
/// * [backgroundColor]: the background color of the list tile.
/// * [foregroundColor]: the foreground color of the list tile.
/// * [evenBackgroundColor]: the background color of the list tile at even indices.
/// * [evenForegroundColor]: the foreground color of the list tile at even indices.
/// * [hoverBackgroundColor]: the background color of the list tile when hovered.
/// * [evenHoverBackgroundColor]: the background color of the list tile at even indices when hovered.
/// * [selectedColor]: the color of the selected list tile.
/// * [textStyle]: the text style of the list tile.
/// * [trailingIcon]: the trailing icon of the list tile.
/// * [withCheckboxIcon]: whether to show the checkbox icon of the list tile.
/// * [checkboxIcon]: the checkbox icon of the list tile.
/// * [selectedCheckboxIcon]: the selected checkbox icon of the list tile.
///
/// It also contains a factory method [ListDataTileStyle.of] which takes in the same parameters as the constructor
/// and returns a [ListDataTileStyle] object.
///
/// The default values of the parameters are as follows:
///
/// * [backgroundColor]: [Colors.transparent]
/// * [foregroundColor]: [Theme.of(context).colorScheme.onSurface]
/// * [evenBackgroundColor]: [Theme.of(context).colorScheme.onSurface.withAlpha(30)]
/// * [evenForegroundColor]: [foregroundColor ?? Theme.of(context).colorScheme.onSurface]
/// * [hoverBackgroundColor]: [Theme.of(context).colorScheme.primary.withAlpha(50)]
/// * [evenHoverBackgroundColor]: [hoverBackgroundColor ?? Theme.of(context).colorScheme.primary.withAlpha(100)]
/// * [selectedColor]: [SelectedTileColor.of(context)]
/// * [textStyle]: [null]
/// * [trailingIcon]: [null]
/// * [withCheckboxIcon]: [true]
/// * [checkboxIcon]: [null]
/// * [selectedCheckboxIcon]: [null]
@freezed
abstract class ListDataTileStyle with _$ListDataTileStyle {
  const ListDataTileStyle._();

  /// A factory method that creates a [ListDataTileStyle] object.
  ///
  /// The parameters of this method are as follows:
  ///
  /// * [backgroundColor]: the background color of the list tile.
  /// * [foregroundColor]: the foreground color of the list tile.
  /// * [evenBackgroundColor]: the background color of the list tile at even indices.
  /// * [evenForegroundColor]: the foreground color of the list tile at even indices.
  /// * [hoverBackgroundColor]: the background color of the list tile when hovered.
  /// * [evenHoverBackgroundColor]: the background color of the list tile at even indices when hovered.
  /// * [selectedColor]: the color of the selected list tile.
  /// * [textStyle]: the text style of the list tile.
  /// * [trailingIcon]: the trailing icon of the list tile.
  /// * [withCheckboxIcon]: whether to show the checkbox icon of the list tile.
  /// * [checkboxIcon]: the checkbox icon of the list tile.
  /// * [selectedCheckboxIcon]: the selected checkbox icon of the list tile.
  const factory ListDataTileStyle({
    Color? backgroundColor,
    Color? foregroundColor,
    Color? evenBackgroundColor,
    Color? evenForegroundColor,
    Color? hoverBackgroundColor,
    Color? evenHoverBackgroundColor,
    @Default(SelectedTileColor.empty) SelectedTileColor selectedColor,
    TextStyle? textStyle,
    Widget? trailingIcon,
    @Default(true) bool withCheckboxIcon,
    Widget? checkboxIcon,
    Widget? selectedCheckboxIcon,
  }) = _ListDataTileStyle;

  /// A factory method that creates a [ListDataTileStyle] object with default values taken from the given [BuildContext].
  ///
  /// The parameters of this method are as follows:
  ///
  /// * [backgroundColor]: the background color of the list tile. Defaults to [Colors.transparent].
  /// * [foregroundColor]: the foreground color of the list tile. Defaults to [Theme.of(context).colorScheme.onSurface].
  /// * [evenBackgroundColor]: the background color of the list tile at even indices. Defaults to [Theme.of(context).colorScheme.onSurface] with 30% opacity.
  /// * [evenForegroundColor]: the foreground color of the list tile at even indices. Defaults to [foregroundColor] if not null, or [Theme.of(context).colorScheme.onSurface] if null.
  /// * [hoverBackgroundColor]: the background color of the list tile when hovered. Defaults to [Theme.of(context).colorScheme.primary] with 50% opacity.
  /// * [evenHoverBackgroundColor]: the background color of the list tile at even indices when hovered. Defaults to [hoverBackgroundColor] if not null, or [Theme.of(context).colorScheme.primary] with 100% opacity if null.
  /// * [selectedColor]: the color of the selected list tile. Defaults to [SelectedTileColor.of(context)].
  /// * [textStyle]: the text style of the list tile. Defaults to null.
  /// * [trailingIcon]: the trailing icon of the list tile. Defaults to null.
  /// * [withCheckboxIcon]: whether to show the checkbox icon of the list tile. Defaults to true.
  /// * [checkboxIcon]: the checkbox icon of the list tile. Defaults to null.
  /// * [selectedCheckboxIcon]: the selected checkbox icon of the list tile. Defaults to null.
  factory ListDataTileStyle.of(
    BuildContext context, {
    Color? backgroundColor,
    Color? foregroundColor,
    Color? evenBackgroundColor,
    Color? evenForegroundColor,
    Color? hoverBackgroundColor,
    Color? evenHoverBackgroundColor,
    SelectedTileColor? selectedColor,
    TextStyle? textStyle,
    Widget? trailingIcon,
    bool? withCheckboxIcon,
    Widget? checkboxIcon,
    Widget? selectedCheckboxIcon,
  }) {
    return ListDataTileStyle(
      backgroundColor: backgroundColor ?? Colors.transparent,
      foregroundColor:
          foregroundColor ?? Theme.of(context).colorScheme.onSurface,
      evenBackgroundColor:
          evenBackgroundColor ??
          Theme.of(context).colorScheme.onSurface.withAlpha(30),
      evenForegroundColor:
          evenForegroundColor ??
          foregroundColor ??
          Theme.of(context).colorScheme.onSurface,
      hoverBackgroundColor:
          hoverBackgroundColor ??
          Theme.of(context).colorScheme.primary.withAlpha(50),
      evenHoverBackgroundColor:
          evenHoverBackgroundColor ??
          Theme.of(context).colorScheme.primary.withAlpha(100),
      selectedColor: selectedColor ?? SelectedTileColor.of(context),
      textStyle: textStyle,
      trailingIcon: trailingIcon,
      withCheckboxIcon: withCheckboxIcon ?? true,
      checkboxIcon: checkboxIcon,
      selectedCheckboxIcon: selectedCheckboxIcon,
    );
  }
}
