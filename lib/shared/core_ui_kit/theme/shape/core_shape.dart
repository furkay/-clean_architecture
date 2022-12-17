import 'package:clean_architecture/shared/core_ui_kit/theme/radius/core_radius.dart';
import 'package:flutter/material.dart';

/// This class is used to define the component shape.
@immutable
class CoreShape extends RoundedRectangleBorder {
  /// This constructor is used to define the component shape.
  const CoreShape() : super();

  /// [CoreShape.allSm] is all small radius.
  CoreShape.allSm() : super(borderRadius: CoreRadius.allSm());

  /// [CoreShape.allMd] is all medium radius.
  CoreShape.allMd() : super(borderRadius: CoreRadius.allMd());

  /// [CoreShape.allLg] is all large radius.
  CoreShape.allLg() : super(borderRadius: CoreRadius.allLg());

  /// [CoreShape.horizontalSm] is horizontal small radius.
  const CoreShape.horizontalSm()
      : super(borderRadius: const CoreRadius.horizontalSm());

  /// [CoreShape.horizontalMd] is horizontal medium radius.
  const CoreShape.horizontalMd()
      : super(borderRadius: const CoreRadius.horizontalMd());

  /// [CoreShape.horizontalLg] is horizontal large radius.
  const CoreShape.horizontalLg()
      : super(borderRadius: const CoreRadius.horizontalLg());

  /// [CoreShape.verticalSm] is vertical small radius.
  const CoreShape.verticalSm()
      : super(borderRadius: const CoreRadius.verticalSm());

  /// [CoreShape.verticalMd] is vertical medium radius.
  const CoreShape.verticalMd()
      : super(borderRadius: const CoreRadius.verticalMd());

  /// [CoreShape.verticalLg] is vertical large radius.
  const CoreShape.verticalLg()
      : super(borderRadius: const CoreRadius.verticalLg());
}
