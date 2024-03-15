import 'package:flutter/material.dart';
import 'Contact_Card_Widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // your logic goes here
        },
        child: const Icon(Icons.plus_one),
      ),
      body: SafeArea(
        child: Column(
          children: const [
            ContactCardWidget(name: "mostafa", mail: "dfjn", number: "djb"),
            ContactCardWidget(name: "bla", mail: "dfjn", number: "djb"),
          ],
        ),
      ),
    );
  }
}
