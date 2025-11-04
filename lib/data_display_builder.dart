import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part "data_display_builder.freezed.dart";

/// A sealed class that defines how a piece of data should be displayed.
///
/// You can either use a pre-defined string builder or a custom widget builder.
///
/// See [DataDisplayBuilderString] for a pre-defined string builder, or
/// [DataDisplayBuilderWidget] for a custom widget builder.
@freezed
sealed class DataDisplayBuilder<T> with _$DataDisplayBuilder<T> {
  /// A pre-defined string builder that can be used to display a piece of data.
  ///
  /// This builder will create a Chip widget with the following properties:
  ///
  /// * [labelBuilder] is used to generate the label of the chip.
  /// * [backgroundColor] is used to set the background color of the chip.
  /// * [labelStyle] is used to set the style of the label.
  /// * [shape] is used to set the shape of the chip.
  /// * [deleteIconColor] is used to set the color of the delete icon.
  /// * [deleteIcon] is used to set the delete icon.
  /// * [avatar] is used to set the avatar of the chip.
  /// * [avatarBoxConstraints] is used to set the box constraints of the avatar.
  /// * [labelPadding] is used to set the padding of the label.
  /// * [side] is used to set the side of the chip where the delete icon is placed.
  ///
  /// See [DataDisplayBuilderWidget] for a custom widget builder.
  const factory DataDisplayBuilder.string({
    required String Function(T data) labelBuilder,
    Color? backgroundColor,
    TextStyle? labelStyle,
    OutlinedBorder? shape,
    Color? deleteIconColor,
    Widget? deleteIcon,
    Widget? avatar,
    BoxConstraints? avatarBoxConstraints,
    EdgeInsetsGeometry? labelPadding,
    @Default(BorderSide.none) BorderSide side,
  }) = DataDisplayBuilderString;

  /// A custom widget builder that can be used to display a piece of data.
  ///
  /// This builder will create a widget with the following properties:
  ///
  /// * [builder] is a function that takes the following parameters:
  ///   * [context] is the build context of the widget.
  ///   * [data] is the data that should be displayed.
  ///   * [delete] is a function that should be called when the delete button is pressed.
  ///
  /// The returned widget will be used to display the data.
  ///
  /// See [DataDisplayBuilderString] for a pre-defined string builder.
  const factory DataDisplayBuilder.custom({
    required Widget Function(
      BuildContext context,
      T data,
      void Function() delete,
    )
    builder,
  }) = DataDisplayBuilderWidget;
}
