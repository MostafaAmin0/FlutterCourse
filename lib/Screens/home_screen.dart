import 'package:flutter/material.dart';

import '../Model/contact.dart';
import '../Widgets/contact_card_widget.dart';

final List<Contact> contacts = [
  Contact("mostafa", "dfjn", "djb"),
  Contact("mkmnd", "dfjn", "djb"),
];

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
          children: [
            ContactCardWidget(
              name: contacts[0].name,
              mail: contacts[0].mail,
              number: contacts[0].number,
            ),
            ContactCardWidget(
              name: contacts[1].name,
              mail: contacts[1].mail,
              number: contacts[1].number,
            ),
          ],
        ),
      ),
    );
  }
}
