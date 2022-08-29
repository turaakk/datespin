import 'package:datespin/pages/home.dart';
import 'package:flutter/material.dart';

class LocalRoutes {
  static const String home = 'home';
}

Map<String, Widget Function(BuildContext)> routes = {
  LocalRoutes.home: (context) => const DateSpin(),
};
