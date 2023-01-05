import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

part 'core_sizer_extensions.dart';
part 'core_sizer_util.dart';

/// Use widget.sizer for set size of app
class CoreSizer extends StatefulWidget {
  /// CoreSizer constructor
  const CoreSizer({super.key, required this.builder});

  /// CoreSizer constructor
  final Widget Function() builder;

  @override
  State<CoreSizer> createState() => _CoreSizerState();
}

class _CoreSizerState extends State<CoreSizer> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            _SizerUtil.instance?.init(constraints, orientation, context);
            return widget.builder();
          },
        );
      },
    );
  }
}
