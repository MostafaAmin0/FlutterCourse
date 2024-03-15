import 'package:flutter/material.dart';

import '../Model/MyContacts.dart';
import '../Widgets/contact_card_widget.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List<Widget>.generate(
        MyContacts.contacts.length,
        (index) {
          return ContactCardWidget(
            name: MyContacts.contacts[index].name,
            mail: MyContacts.contacts[index].mail,
            number: MyContacts.contacts[index].number,
          );
        },
      ),
    );
  }
}
