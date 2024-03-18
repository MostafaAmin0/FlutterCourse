import 'package:flutter/material.dart';

class TestRouteScreen extends StatelessWidget {
  const TestRouteScreen({super.key});

  //TODO what if it has property to receive data from previous screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Route Screen"),
      ),
      body: Center(child: Text("Test Route Screen")),
    );
  }
}
