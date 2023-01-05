part of 'core_sizer.dart';

class _SizerUtil {
  /// _SizerUtil constructor
  _SizerUtil._init();
  static _SizerUtil? _instance;
  static _SizerUtil? get instance {
    return _instance ??= _SizerUtil._init();
  }

  static double _width = 0;
  static double _height = 0;
  static double _pixelRatio = 0;
  static double _textScaleFactor = 0;
  static double _safeAreaHorizontal = 0;
  static double _safeAreaVertical = 0;
  static double _safeBlockHorizontal = 0;
  static double _safeBlockVertical = 0;
  static DeviceType _deviceType = DeviceType.mobile;

  void init(
    BoxConstraints constraints,
    Orientation orientation,
    BuildContext context,
  ) {
    if (orientation == Orientation.portrait) {
      _width = constraints.maxWidth;
      _height = constraints.maxHeight;
    } else {
      _width = constraints.maxHeight;
      _height = constraints.maxWidth;
    }
    _pixelRatio = MediaQuery.of(context).devicePixelRatio;
    _textScaleFactor = MediaQuery.of(context).textScaleFactor;
    _safeAreaHorizontal = _width -
        MediaQuery.of(context).padding.left -
        MediaQuery.of(context).padding.right;
    _safeAreaVertical = _height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    _safeBlockHorizontal = _safeAreaHorizontal / 100;
    _safeBlockVertical = _safeAreaVertical / 100;
    if (kIsWeb) {
      _deviceType = DeviceType.web;
    } else if (Platform.isAndroid || Platform.isIOS) {
      if ((orientation == Orientation.portrait && _width < 600) ||
          (orientation == Orientation.landscape && _height < 600)) {
        _deviceType = DeviceType.mobile;
      } else {
        _deviceType = DeviceType.tablet;
      }
    } else if (Platform.isMacOS) {
      _deviceType = DeviceType.mac;
    } else if (Platform.isWindows) {
      _deviceType = DeviceType.windows;
    } else if (Platform.isLinux) {
      _deviceType = DeviceType.linux;
    } else {
      _deviceType = DeviceType.fuchsia;
    }
  }
}

/// DeviceType
enum DeviceType {
  /// mobile device
  mobile,

  /// tablet device
  tablet,

  /// web device
  web,

  /// mac device
  mac,

  /// windows device
  windows,

  /// linux device
  linux,

  /// fuchsia device
  fuchsia,
}
