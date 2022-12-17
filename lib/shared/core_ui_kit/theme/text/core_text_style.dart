import 'package:flutter/cupertino.dart';

import '../color/core_color.dart';

///[CoreTextStyle] is a class that contains the styles of the text.
class CoreTextStyle {
  static const Color _defaultColor = CoreColor.black;

  ///[titleM] is a [TextStyle]
  static TextStyle titleM({Color? color = _defaultColor}) {
    return TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.w700);
  }

  ///[bodyM] is a [TextStyle]
  static TextStyle bodyM({Color? color = _defaultColor}) {
    return TextStyle(color: color, fontSize: 16, fontWeight: FontWeight.w400);
  }
}
