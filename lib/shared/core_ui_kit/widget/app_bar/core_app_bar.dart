import 'package:flutter/material.dart';

import '../../theme/color/core_color.dart';
import '../button/core_button.dart';
import '../text/core_text.dart';

/// [CoreAppBar] is a [AppBar].
class CoreAppBar extends AppBar {
  ///This is a [CoreAppBar] constructor.
  CoreAppBar({
    super.key,
    this.titleText,
    List<CoreButton>? actions,
    CoreButton? leading,
  }) : super(
          title: titleText != null
              ? CoreText.title(
                  titleText,
                  color: CoreColor.whiteMink,
                )
              : null,
          centerTitle: true,
          actions: actions,
          leading: leading,
        );

  /// [titleText] is a [String] that is used as a title.
  final String? titleText;

  @override
  Size get preferredSize => const Size.fromHeight(_kToolbarHeight);
}

const double _kToolbarHeight = 60;
