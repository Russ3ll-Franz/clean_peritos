import 'package:app_peritos/features/home/route/route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../page_initial/app_start_page.dart';

class AppRouteObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {}
}

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(page: LandingPage, initial: true),
  homeRouter
  /* ,
  signInRouter,
  inspeccionRouter */
])
class $AppRouter {}
