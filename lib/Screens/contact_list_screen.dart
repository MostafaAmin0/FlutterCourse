import 'package:flutter/material.dart';

import '../Model/MyContacts.dart';
import '../Widgets/contact_card_widget.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: MyContacts.contacts.length,
      itemBuilder: (context, index) {
        return ContactCardWidget(
          name: MyContacts.contacts[index].name,
          mail: MyContacts.contacts[index].mail,
          number: MyContacts.contacts[index].number,
          color: index.isEven ? Colors.lightBlue : Colors.lightGreen,
        );
      },
    );
  }
}
