import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Model/contact.dart';
import '../Provider/contact_provider.dart';
import '../Widgets/contact_card_widget.dart';

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: Provider.of<ContactProvider>(context).contacts.length,
      itemBuilder: (context, index) {
        List<Contact> list = Provider.of<ContactProvider>(context).contacts;
        return ContactCardWidget(
          name: list[index].name,
          mail: list[index].mail,
          number: list[index].number,
          color: index.isEven ? Colors.redAccent : Colors.lightGreen,
        );
      },
    );
  }
}
