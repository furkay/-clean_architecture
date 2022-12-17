import 'package:flutter/material.dart';

import 'color/core_color.dart';

/// The core theme of the app.
class CoreTheme {
  ///The theme mode of the app
  static ThemeMode get themeMode => ThemeMode.system;

  /// The dark theme of the app.
  static ThemeData get dark => ThemeData.dark();

  /// The light theme of the app.
  static ThemeData get light => ThemeData.light().copyWith(
        primaryColor: CoreColor.emberglow,
        scaffoldBackgroundColor: CoreColor.white,
        cardColor: CoreColor.whiteMink,
        appBarTheme: const AppBarTheme(
          color: CoreColor.pastelTurquise,
          titleTextStyle: TextStyle(),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: CoreColor.emberglow,
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: CoreColor.emberglow,
            onPrimary: CoreColor.whiteMink,
            secondary: CoreColor.emberglow,
            onSecondary: CoreColor.whiteMink,
            error: CoreColor.radler,
            onError: CoreColor.black,
            background: CoreColor.emberglow,
            onBackground: CoreColor.whiteMink,
            surface: CoreColor.emberglow,
            onSurface: CoreColor.whiteMink,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(CoreColor.emberglow),
            foregroundColor: MaterialStateProperty.all(CoreColor.whiteMink),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(CoreColor.emberglow),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: CoreColor.emberglow,
            ),
          ),
        ),
      );
}
