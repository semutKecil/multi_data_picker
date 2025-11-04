import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:multi_data_picker/list_data_tile_style.dart';
part 'list_data_builder.freezed.dart';

/// A sealed class that defines how a list of data should be displayed.
///
/// It contains two subclasses: [ListDataBuilderString] and [ListDataBuilderCustom].
///
/// [ListDataBuilderString] is used to display a list of data as strings.
/// It takes a [labelBuilder] which is a function that takes a data and returns a
/// string label for the data.
///
/// [ListDataBuilderCustom] is used to display a list of data as custom widgets.
/// It takes a [builder] which is a function that takes a build context, a data, and
/// a [ListTileMetadata] object, and returns a widget for the data.
@freezed
sealed class ListDataBuilder<T> with _$ListDataBuilder<T> {
  /// A factory to create a [ListDataBuilder] that displays a list of data as strings.
  ///
  /// It takes a [labelBuilder] which is a function that takes a data and returns a
  /// string label for the data.
  ///
  /// Optionally, it takes a [style] which is a [ListDataTileStyle] object that is used
  /// to customize the appearance of the list tiles.
  ///
  /// Returns a [ListDataBuilderString] object.
  const factory ListDataBuilder.string({
    required String Function(T data) labelBuilder,
    ListDataTileStyle? style,
  }) = ListDataBuilderString;

  /// A factory to create a [ListDataBuilder] that displays a list of data as custom widgets.
  ///
  /// It takes a [builder] which is a function that takes a build context, a data, and
  /// a [ListTileMetadata] object, and returns a widget for the data.
  ///
  /// The [ListTileMetadata] object contains information about whether the data is selected
  /// and whether the data is at an even index in the list.
  ///
  /// Returns a [ListDataBuilderCustom] object.
  const factory ListDataBuilder.custom({
    required Widget Function(
      BuildContext context,
      T data,
      ListTileMetadata metadata,
    )
    builder,
  }) = ListDataBuilderCustom;
}

/// A class that contains metadata about a list tile.
///
/// * [selected]: a boolean indicating whether the data is selected.
/// * [isEven]: a boolean indicating whether the data is at an even index in the list.
class ListTileMetadata {
  final bool selected;
  final bool isEven;

  /// Creates a new [ListTileMetadata] object.
  ///
  /// * [selected]: a boolean indicating whether the data is selected.
  /// * [isEven]: a boolean indicating whether the data is at an even index in the list.
  const ListTileMetadata({this.selected = false, this.isEven = false});
}
