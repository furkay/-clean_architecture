part of 'core_sizer.dart';

/// DeviceType
extension ScaffoldExtension on Scaffold {
  /// Widget.sizer for set size of app
  Widget get sizer => CoreSizer(builder: () => this);
}

/// SizerExtension
extension SizerExtension on int {
  /// w is width
  double get w => _SizerUtil._safeBlockHorizontal * this;

  /// h is height
  double get h => _SizerUtil._safeBlockVertical * this;

  /// sp is textScaleFactor
  double get sp => this * _SizerUtil._textScaleFactor;

  /// wp is width percentage
  double get wp => _SizerUtil._width * this / 100;

  /// hp is height percentage
  double get hp => _SizerUtil._height * this / 100;

  /// dp is device pixel ratio
  double get dp => this * _SizerUtil._pixelRatio;
}

/// SizerContext
extension SizerContext on BuildContext {
  /// width
  double get width => _SizerUtil._width;

  /// height
  double get height => _SizerUtil._height;

  /// pixelRatio
  double get pixelRatio => _SizerUtil._pixelRatio;

  /// textScaleFactor
  double get textScaleFactor => _SizerUtil._textScaleFactor;

  /// deviceType
  DeviceType get deviceType => _SizerUtil._deviceType;
}
