import 'package:app_peritos/core/route/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/route/app_router.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();

    return MaterialApp.router(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        appBarTheme:
            const AppBarTheme(color: Color.fromARGB(255, 212, 51, 212)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color.fromARGB(255, 255, 106, 19),
        ),
      ),
      debugShowCheckedModeBanner: false,
      routerDelegate: AutoRouterDelegate(
        _appRouter,
        navigatorObservers: () => [AppRouteObserver()],
      ),
      routeInformationProvider: _appRouter.routeInfoProvider(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
