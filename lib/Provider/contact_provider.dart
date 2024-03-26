import 'package:flutter/cupertino.dart';

import '../Model/MyContacts.dart';
import '../Model/contact.dart';

class ContactProvider extends ChangeNotifier {
  List<Contact> contacts = [
    Contact('Muhamed', 'mo@gmail.com', '0146513555'),
    Contact('ahmed', 'ahm@gmail.com', '5453453531'),
  ];
  void addContact(Contact newContact) {
    contacts.add(newContact);
    notifyListeners();
  }
}
