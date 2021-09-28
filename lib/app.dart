import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:random_slot_game/core/l10n/app_localization.dart';
import 'package:random_slot_game/presentation/splash/splash_page.dart';
import 'package:sizer/sizer.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static const themeMode = ThemeMode.system;
  static const scheme = FlexScheme.redWine;

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
        title: 'Flutter Demo', // FIXME: タイトル変更
        theme: FlexColorScheme.dark(
          scheme: scheme,
        ).toTheme,
        darkTheme: FlexColorScheme.dark(
          scheme: scheme,
        ).toTheme,
        themeMode: themeMode,
        localizationsDelegates: AppLocalization.localizationsDelegates,
        supportedLocales: AppLocalization.supportedLocales,
        home: const SplashPage(),
      ),
    );
  }
}
