import 'package:flutter/cupertino.dart';

import '../Model/MyContacts.dart';
import '../Model/contact.dart';

class ContactProvider extends ChangeNotifier {
  MyContacts myContacts = MyContacts();

  void createNewContact({required Contact newContact}) {
    myContacts.contacts.add(newContact);
    notifyListeners();
  }
}
