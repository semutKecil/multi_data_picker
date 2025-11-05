import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'selected_tile_color.freezed.dart';

/// A sealed class that defines the colors of a selected list tile.
///
/// It contains six properties: [backgroundColor], [foregroundColor], [evenBackgroundColor],
/// [evenForegroundColor], [hoverBackgroundColor], and [evenHoverBackgroundColor].
///
/// The [backgroundColor] property sets the background color of the selected list tile.
/// The [foregroundColor] property sets the foreground color of the selected list tile.
/// The [evenBackgroundColor] property sets the background color of the selected list tile
/// when the tile is at an even index.
/// The [evenForegroundColor] property sets the foreground color of the selected list tile
/// when the tile is at an even index.
/// The [hoverBackgroundColor] property sets the background color of the selected list tile
/// when the user is hovering over the tile.
/// The [evenHoverBackgroundColor] property sets the background color of the selected list tile
/// when the user is hovering over the tile and the tile is at an even index.
///
/// The [SelectedTileColor.of] factory is used to create a new instance of the
/// [SelectedTileColor] class. It takes a build context and six optional color parameters.
/// If any of the color parameters are not provided, the factory will use the default color
/// scheme of the build context.
///
/// The [empty] property returns an empty instance of the [SelectedTileColor] class,
/// which can be used as a default value when no custom colors are provided.
@freezed
abstract class SelectedTileColor with _$SelectedTileColor {
  const SelectedTileColor._();

  /// Creates a new instance of the [SelectedTileColor] class.
  ///
  /// The [backgroundColor] property sets the background color of the selected list tile.
  /// The [foregroundColor] property sets the foreground color of the selected list tile.
  /// The [evenBackgroundColor] property sets the background color of the selected list tile
  /// when the tile is at an even index.
  /// The [evenForegroundColor] property sets the foreground color of the selected list tile
  /// when the tile is at an even index.
  /// The [hoverBackgroundColor] property sets the background color of the selected list tile
  /// when the user is hovering over the tile.
  /// The [evenHoverBackgroundColor] property sets the background color of the selected list tile
  /// when the user is hovering over the tile and the tile is at an even index.
  ///
  /// If any of the color parameters are not provided, the factory will use the default color
  /// scheme of the build context.
  const factory SelectedTileColor({
    Color? backgroundColor,
    Color? foregroundColor,
    Color? evenBackgroundColor,
    Color? evenForegroundColor,
    Color? hoverBackgroundColor,
    Color? evenHoverBackgroundColor,
  }) = _SelectedTileColor;

  /// Creates a new instance of the [SelectedTileColor] class based on the default colors
  /// of the given build context.
  ///
  /// The [backgroundColor] property sets the background color of the selected list tile.
  /// The [foregroundColor] property sets the foreground color of the selected list tile.
  /// The [evenBackgroundColor] property sets the background color of the selected list tile
  /// when the tile is at an even index.
  /// The [evenForegroundColor] property sets the foreground color of the selected list tile
  /// when the tile is at an even index.
  /// The [hoverBackgroundColor] property sets the background color of the selected list tile
  /// when the user is hovering over the tile.
  /// The [evenHoverBackgroundColor] property sets the background color of the selected list tile
  /// when the user is hovering over the tile and the tile is at an even index.
  ///
  /// If any of the color parameters are not provided, the factory will use the default color
  /// scheme of the build context.
  factory SelectedTileColor.of(
    BuildContext context, {
    Color? backgroundColor,
    Color? foregroundColor,
    Color? evenBackgroundColor,
    Color? evenForegroundColor,
    Color? hoverBackgroundColor,
    Color? evenHoverBackgroundColor,
  }) {
    var isDark = Theme.of(context).brightness == Brightness.dark;

    return SelectedTileColor(
      backgroundColor:
          backgroundColor ?? (isDark ? Color(0xFF1565C0) : Color(0xFFBBDEFB)),
      foregroundColor:
          foregroundColor ?? Theme.of(context).colorScheme.onPrimaryContainer,
      evenBackgroundColor:
          evenBackgroundColor ??
          (isDark ? Color(0xFF1976D2) : Color(0xFF90CAF9)),
      evenForegroundColor:
          evenBackgroundColor ??
          Theme.of(context).colorScheme.onTertiaryContainer,
      hoverBackgroundColor:
          evenBackgroundColor ??
          (isDark ? Color(0xFF0D47A1) : Color(0xFF64B5F6)),
      evenHoverBackgroundColor:
          evenBackgroundColor ??
          (isDark ? Color(0xFF0B3C91) : Color(0xFF42A5F5)),
    );
  }

  /// An empty instance of the [SelectedTileColor] class.
  ///
  /// This instance can be used as a default value when no custom colors are provided.
  static const empty = SelectedTileColor();
}
