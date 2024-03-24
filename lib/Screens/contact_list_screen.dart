import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Model/MyContacts.dart';
import '../Provider/contact_provider.dart';
import '../Widgets/contact_card_widget.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount:
          Provider.of<ContactProvider>(context).myContacts.contacts.length,
      itemBuilder: (context, index) {
        return ContactCardWidget(
          name: Provider.of<ContactProvider>(context)
              .myContacts
              .contacts[index]
              .name,
          mail: Provider.of<ContactProvider>(context)
              .myContacts
              .contacts[index]
              .mail,
          number: Provider.of<ContactProvider>(context)
              .myContacts
              .contacts[index]
              .number,
          color: index.isEven ? Colors.redAccent : Colors.lightGreen,
        );
      },
    );
  }
}
