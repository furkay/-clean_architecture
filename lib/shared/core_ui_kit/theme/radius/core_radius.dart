import 'package:flutter/material.dart';

/// This class is used to define the component radius.
@immutable
class CoreRadius extends BorderRadius {
  /// This is the default constructor for the [CoreRadius] class.
  CoreRadius() : super.circular(0);

  /// [CoreRadius.allDynamic] is all dynamic radius.
  CoreRadius.allDynamic(super.radius) : super.circular();

  /// [CoreRadius.allSm] is all small radius.
  CoreRadius.allSm() : super.circular(4);

  /// [CoreRadius.allMd] is all medium radius.
  CoreRadius.allMd() : super.circular(8);

  /// [CoreRadius.allLg] is all large radius.
  CoreRadius.allLg() : super.circular(16);

  /// [CoreRadius.horizontalSm] is horizontal small radius.
  const CoreRadius.horizontalSm()
      : super.horizontal(
          left: const Radius.circular(4),
          right: const Radius.circular(4),
        );

  /// [CoreRadius.horizontalMd] is horizontal medium radius.
  const CoreRadius.horizontalMd()
      : super.horizontal(
          left: const Radius.circular(8),
          right: const Radius.circular(8),
        );

  /// [CoreRadius.horizontalLg] is horizontal large radius.
  const CoreRadius.horizontalLg()
      : super.horizontal(
          left: const Radius.circular(16),
          right: const Radius.circular(16),
        );

  /// [CoreRadius.verticalSm] is vertical small radius.
  const CoreRadius.verticalSm()
      : super.vertical(
          top: const Radius.circular(4),
          bottom: const Radius.circular(4),
        );

  /// [CoreRadius.verticalMd] is vertical medium radius.
  const CoreRadius.verticalMd()
      : super.vertical(
          top: const Radius.circular(8),
          bottom: const Radius.circular(8),
        );

  /// [CoreRadius.verticalLg] is vertical large radius.
  const CoreRadius.verticalLg()
      : super.vertical(
          top: const Radius.circular(16),
          bottom: const Radius.circular(16),
        );

  /// [CoreRadius.only] is only radius.
  CoreRadius.only({
    double topLeft = 0,
    double topRight = 0,
    double bottomLeft = 0,
    double bottomRight = 0,
  }) : super.only(
          topLeft: Radius.circular(topLeft),
          topRight: Radius.circular(topRight),
          bottomLeft: Radius.circular(bottomLeft),
          bottomRight: Radius.circular(bottomRight),
        );
}
