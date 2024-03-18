import 'package:flutter/material.dart';
import 'package:lab_g2/Screens/add_contact_screen.dart';
import 'package:lab_g2/Screens/contact_list_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const List<Widget> _widgetOptions = <Widget>[
    ContactListScreen(),
    AddContactScreen(),
  ];

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
          print(_selectedIndex);
        },
      ),
    );
  }
}
