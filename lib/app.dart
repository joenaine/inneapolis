import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inneapolis/generated/l10n.dart';
import 'package:inneapolis/resources/themes.dart';
import 'package:inneapolis/routing/app_router.dart';

class App extends StatelessWidget {
  final _router = AppRouter();

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 732),
      builder: (context, child) {
        return MaterialApp.router(
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          locale: const Locale('en', 'EN'),
          debugShowCheckedModeBanner: false,
          theme: Themes.defaultTheme,
          routerDelegate: _router.delegate(),
          routeInformationParser: _router.defaultRouteParser(),
        );
      },
    );
  }
}
