import 'package:clean_architecture/common/routes/app_router.gr.dart';
import 'package:clean_architecture/common/utils/bloc_helpers/bloc_observer.dart';
import 'package:clean_architecture/shared/core/localization/localization_manager.dart';
import 'package:clean_architecture/shared/core_ui_kit/theme/core_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  MyBlocObserver();
  runApp(LocalizationWrapper.app(MyApp()));
}

/// This is the main application widget.
class MyApp extends StatelessWidget {
  /// This is the main application widget.
  MyApp({super.key});

  final _appRouter = AppRouter();

  // This widget is the ro ot of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      theme: CoreTheme.light,
      themeMode: CoreTheme.themeMode,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
