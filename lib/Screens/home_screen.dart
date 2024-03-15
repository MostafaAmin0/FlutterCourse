import 'package:flutter/material.dart';

import '../Model/contact.dart';
import '../Widgets/contact_card_widget.dart';

final List<Contact> contacts = [
  Contact("mostafa", "dfjn", "djb"),
  Contact("mkmnd", "mosu", "djb"),
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
          children: List<Widget>.generate(
            contacts.length,
            (index) {
              return ContactCardWidget(
                name: contacts[index].name,
                mail: contacts[index].mail,
                number: contacts[index].number,
              );
            },
          ),
        ),
      ),
    );
  }
}
