import 'package:flutter/material.dart';

/// This class is used to define the page space box.
@immutable
class CoreSpaceBox extends SizedBox {
  /// This is the default constructor.
  const CoreSpaceBox({super.key}) : super.shrink();

  /// [CoreSpaceBox.allDynamic] is all dynamic space box.
  const CoreSpaceBox.allDynamic(double value, {super.key})
      : super(height: value, width: value);

  /// [CoreSpaceBox.horizontalDynamic] is horizontal dynamic space box.
  const CoreSpaceBox.horizontalDynamic(double value, {super.key})
      : super(width: value);

  /// [CoreSpaceBox.verticalDynamic] is vertical dynamic space box.
  const CoreSpaceBox.verticalDynamic(double value, {super.key})
      : super(height: value);

  /// [CoreSpaceBox.allSm] is all small space box.
  const CoreSpaceBox.allSm({super.key}) : super(height: 4, width: 4);

  /// [CoreSpaceBox.allMd] is all medium space box.
  const CoreSpaceBox.allMd({super.key}) : super(height: 8, width: 8);

  /// [CoreSpaceBox.allLg] is all large space box.
  const CoreSpaceBox.allLg({super.key}) : super(height: 16, width: 16);

  /// [CoreSpaceBox.allXl] is all extra large space box.
  const CoreSpaceBox.allXl({super.key}) : super(height: 32, width: 32);

  /// [CoreSpaceBox.horizontalSm] is horizontal small space box.
  const CoreSpaceBox.horizontalSm({super.key}) : super(width: 4);

  /// [CoreSpaceBox.horizontalMd] is horizontal medium space box.
  const CoreSpaceBox.horizontalMd({super.key}) : super(width: 8);

  /// [CoreSpaceBox.horizontalLg] is horizontal large space box.
  const CoreSpaceBox.horizontalLg({super.key}) : super(width: 16);

  /// [CoreSpaceBox.horizontalXl] is horizontal extra large space box.
  const CoreSpaceBox.horizontalXl({super.key}) : super(width: 32);

  /// [CoreSpaceBox.verticalSm] is vertical small space box.
  const CoreSpaceBox.verticalSm({super.key}) : super(height: 4);

  /// [CoreSpaceBox.verticalMd] is vertical medium space box.
  const CoreSpaceBox.verticalMd({super.key}) : super(height: 8);

  /// [CoreSpaceBox.verticalLg] is vertical large space box.
  const CoreSpaceBox.verticalLg({super.key}) : super(height: 16);

  /// [CoreSpaceBox.verticalXl] is vertical extra large space box.
  const CoreSpaceBox.verticalXl({super.key}) : super(height: 32);
}
