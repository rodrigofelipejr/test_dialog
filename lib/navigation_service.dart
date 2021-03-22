import 'package:flutter/material.dart';

class NavigationService {
  static NavigationService _instance;
  factory NavigationService() {
    _instance ??= NavigationService._internalConstructor();
    return _instance;
  }
  NavigationService._internalConstructor();

  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
}
