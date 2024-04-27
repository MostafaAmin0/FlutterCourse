import 'package:flutter/material.dart';
import 'package:lab_g2/Screens/contact_list_screen.dart';
import 'package:provider/provider.dart';
import '../Provider/contact_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed("/AddContact");
        },
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: Provider.of<ContactProvider>(context, listen: false)
              .getContacts(),
          builder: (context, snapShot) {
            if (snapShot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapShot.error != null) {
              ///TODO handle error
            }
            return ContactListScreen();
          },
        ),
      ),
    );
  }
}
