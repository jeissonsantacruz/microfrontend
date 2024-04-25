import 'package:flutter/material.dart';
import 'package:mf_creci/mf_creci.dart';
import 'package:mf_home/mf_home.dart';
import 'package:mf_sap/mf_sap.dart';

class HomeRoutes {
  static HomeScreen getHomeScreen(BuildContext context) {
    final HomeConfig homeConfig = HomeConfig(
      () => Navigator.of(context).pushNamed(SapScreen.sapRoute),
      () => Navigator.of(context).pushNamed(CreciScreen.creciRoute),
    );
    return HomeScreen(homeConfig);
  }
}
