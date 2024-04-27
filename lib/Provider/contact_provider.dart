import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../Model/contact.dart';

class ContactProvider extends ChangeNotifier {
  List<Contact> _contacts = [];

  get contacts => _contacts;

  void addContact(Contact newContact) async {
    var contactsCollection = FirebaseFirestore.instance.collection('Contacts');
    contacts.add(newContact);
    notifyListeners();
  }

  Future getContacts() async {
    _contacts = [];
    var contactsCollection = FirebaseFirestore.instance.collection('Contacts');
    var data = await contactsCollection.get();
    for (var doc in data.docs) {
      // print(doc.id);
      final contactData = doc.data();
      var contact = Contact(
        doc.id,
        contactData['name'],
        contactData['mail'],
        contactData['number'],
      );
      _contacts.add(contact);
    }
    notifyListeners();
  }
}
