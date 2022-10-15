import 'package:flutter/material.dart';
import '../screens/home/home_screen.dart';

Map<String, WidgetBuilder> appRouter() {
  return {
    HomeScreen.route: (context) => const HomeScreen(),
  };
}
