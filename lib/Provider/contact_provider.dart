import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/contact.dart';

class ContactProvider extends ChangeNotifier {
  List<Contact> _contacts = [
    Contact('Muhamed', 'mo@gmail.com', '0146513555'),
    Contact('ahmed', 'ahm@gmail.com', '5453453531'),
  ];

  get contacts => _contacts;

  void addContact(Contact newContact) {
    contacts.add(newContact);
    notifyListeners();
  }
}
