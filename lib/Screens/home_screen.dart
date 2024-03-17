import 'package:flutter/material.dart';
import 'package:lab_g2/Screens/contact_list_screen.dart';

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
      body: const SafeArea(
        child: ContactListScreen(),
      ),
    );
  }
}
