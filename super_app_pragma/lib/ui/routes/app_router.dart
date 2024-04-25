import 'package:flutter/material.dart';
import 'package:mf_creci/mf_creci.dart';
import 'package:mf_home/mf_home.dart';
import 'package:mf_sap/mf_sap.dart';
import 'package:super_app_pragma/ui/routes/creci_routes.dart';
import 'package:super_app_pragma/ui/routes/home_routes.dart';
import 'package:super_app_pragma/ui/routes/sap_routes.dart';

class AppRouter {
  Map<String, WidgetBuilder> routes() {
    final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{};
    routes.addAll(<String, WidgetBuilder>{
      HomeScreen.homeRoute: HomeRoutes.getHomeScreen,
      SapScreen.sapRoute: SapRoutes.getSapScreen,
      CreciScreen.creciRoute: CreciRoutes.getCreciScreen
    });
    return updateContext(routes);
  }

  Map<String, WidgetBuilder> updateContext(Map<String, WidgetBuilder> routes) {
    final Map<String, WidgetBuilder> routesContext = <String, WidgetBuilder>{};

    for (final String key in routes.keys) {
      routesContext.addAll(<String, WidgetBuilder>{
        key: (context) {
          return routes[key]!.call(context);
        },
      });
    }

    return routesContext;
  }
}
