import 'package:flutter/material.dart';

import '../Model/MyContacts.dart';
import '../Model/contact.dart';

class AddContactScreen extends StatefulWidget {
  const AddContactScreen({super.key});

  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
  late TextEditingController nameCtrlr;
  late TextEditingController phoneCtrlr;
  late TextEditingController mailCtrlr;

  @override
  void dispose() {
    nameCtrlr.dispose();
    mailCtrlr.dispose();
    phoneCtrlr.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    nameCtrlr = TextEditingController();
    phoneCtrlr = TextEditingController();
    mailCtrlr = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Contact"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            decoration: const InputDecoration(
              fillColor: Colors.lightBlue,
              hintText: 'Name',
            ),
            controller: nameCtrlr,
          ),
          TextField(
            decoration: const InputDecoration(
              fillColor: Colors.lightBlue,
              hintText: 'mail',
            ),
            controller: mailCtrlr,
          ),
          TextField(
            decoration: const InputDecoration(
              fillColor: Colors.lightBlue,
              hintText: 'phone',
            ),
            controller: phoneCtrlr,
          ),
          Center(
            child: ElevatedButton(
              child: const Text("Add Contact"),
              onPressed: () {
                MyContacts.contacts.add(Contact(
                  nameCtrlr.value.text,
                  mailCtrlr.value.text,
                  phoneCtrlr.value.text,
                ));
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
