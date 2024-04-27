import 'package:flutter/material.dart';
import 'package:lab_g2/Screens/home_screen.dart';

import 'Screens/test_route_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomeScreen(),
      initialRoute: "/",
      routes: {
        "/": (ctx) => const HomeScreen(),
        "/test": (ctx) => const TestRouteScreen(),
      },
    );
  }
}
