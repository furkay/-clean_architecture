import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// This class is responsible for managing the localization of the app.
class LocalizationWrapper {
  LocalizationWrapper._();

  static const String _locatizationPath = 'assets/translations';

  static const List<Locale> _supportedLocales = [
    Locale('en', 'US'),
    Locale('tr', 'TR'),
  ];

  /// This method is used to initialize localization.
  static Widget app(Widget widget) {
    return EasyLocalization(
      supportedLocales: _supportedLocales,
      path: _locatizationPath,
      fallbackLocale: _supportedLocales.last,
      child: widget,
    );
  }
}
