import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../theme/text/core_text_style.dart';

/// A widget that automatically resizes text to fit perfectly within its bounds.
@immutable
class CoreText extends Text {
  const CoreText._({
    TextStyle? style,
    required String text,
    int? maxLines,
    super.key,
  }) : super(text, style: style, maxLines: maxLines);

  /// [CoreText.body] is a [CoreText] with a [CoreTextStyle.bodyM] style.
  CoreText.body(
    String text, {
    Key? key,
    int? maxLines,
  }) : this._(
          key: key,
          text: text,
          style: CoreTextStyle.bodyM(),
          maxLines: maxLines,
        );

  /// [CoreText.title] is a [CoreText] with a [CoreTextStyle.titleM] style.
  CoreText.title(String text, {Key? key, int? maxLines, Color? color})
      : this._(
          key: key,
          text: text,
          style: CoreTextStyle.titleM(color: color),
          maxLines: maxLines,
        );

  /// The [_singleLine] determines which one to use [AutoSizeText] or [Text].
  bool get _singleLine => maxLines == 1 || maxLines == null;

  /// [build] is build method.
  @override
  Widget build(BuildContext context) {
    return _singleLine
        ? AutoSizeText(
            data!,
            style: style,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          )
        : Text(
            data!,
            style: style,
            maxLines: maxLines,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          );
  }
}
