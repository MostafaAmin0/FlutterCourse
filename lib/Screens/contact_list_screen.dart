import 'package:flutter/material.dart';
import 'package:lab_g2/Models/contact_list.dart';

import '../Widgets/contact_card_widget.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: ContactList.contacts.length,
        itemBuilder: (context, index) {
          return ContactCardWidget(
            name: ContactList.contacts[index].name,
            phone: ContactList.contacts[index].phone,
            email: ContactList.contacts[index].email,
            color: index % 2 == 0 ? Colors.blue : Colors.green,
          );
        },
      ),
    );
  }
}
