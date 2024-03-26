import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Model/contact.dart';
import '../Provider/contact_provider.dart';

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
                Contact newContact = Contact(
                  nameCtrlr.value.text,
                  mailCtrlr.value.text,
                  phoneCtrlr.value.text,
                );
                Provider.of<ContactProvider>(context, listen: false)
                    .addContact(newContact);

                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
