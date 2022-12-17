import 'package:flutter/material.dart';

/// This class is used to define the page space.
@immutable
class CoreSpace extends EdgeInsets {
  /// This is the default constructor.
  const CoreSpace() : super.all(0);

  /// [CoreSpace.allDynamic] is all dynamic page space.
  const CoreSpace.allDynamic(super.value) : super.all();

  /// [CoreSpace.allSm] is all small space.
  const CoreSpace.allSm() : super.all(4);

  /// [CoreSpace.allMd] is all medium space.
  const CoreSpace.allMd() : super.all(8);

  /// [CoreSpace.allLg] is all large space.
  const CoreSpace.allLg() : super.all(16);

  /// [CoreSpace.allXl] is all extra large space.
  const CoreSpace.allXl() : super.all(32);

  /// [CoreSpace.horizontalDynamic] is horizontal dynamic space.
  const CoreSpace.horizontalDynamic(double value)
      : super.symmetric(horizontal: value);

  /// [CoreSpace.horizontalSm] is horizontal small space.
  const CoreSpace.horizontalSm() : super.symmetric(horizontal: 4);

  /// [CoreSpace.horizontalMd] is horizontal medium space.
  const CoreSpace.horizontalMd() : super.symmetric(horizontal: 8);

  /// [CoreSpace.horizontalLg] is horizontal large space.
  const CoreSpace.horizontalLg() : super.symmetric(horizontal: 16);

  /// [CoreSpace.horizontalXl] is horizontal extra large space.
  const CoreSpace.horizontalXl() : super.symmetric(horizontal: 32);

  /// [CoreSpace.verticalDynamic] is vertical dynamic page space.
  const CoreSpace.verticalDynamic(double value)
      : super.symmetric(vertical: value);

  /// [CoreSpace.verticalSm] is the vertical small page space.
  const CoreSpace.verticalSm() : super.symmetric(vertical: 4);

  /// [CoreSpace.verticalMd] is the vertical medium page space.
  const CoreSpace.verticalMd() : super.symmetric(vertical: 8);

  /// [CoreSpace.verticalLg] is the vertical large page space.
  const CoreSpace.verticalLg() : super.symmetric(vertical: 16);

  /// [CoreSpace.verticalXl] is vertical extralarge page space.
  const CoreSpace.verticalXl() : super.symmetric(vertical: 32);

  /// This is dynamic symmetric page space.
  const CoreSpace.symmetricDynamic(double horizontal, double vertical)
      : super.symmetric(horizontal: horizontal, vertical: vertical);

  /// [CoreSpace.only] is used to define the page space.
  const CoreSpace.only({
    super.left,
    super.top,
    super.right,
    super.bottom,
  }) : super.only();
}
