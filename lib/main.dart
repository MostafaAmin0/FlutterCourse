import 'package:flutter/material.dart';
import 'package:lab_g2/Screens/add_contact_screen.dart';
import 'package:lab_g2/Screens/home_screen.dart';
import 'package:provider/provider.dart';

import 'Provider/contact_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => ContactProvider()),
      ],
      child: MaterialApp(
        // home: HomeScreen(),
        initialRoute: "/",
        routes: {
          "/": (ctx) => const HomeScreen(),
          "/AddContact": (ctx) => const AddContactScreen(),
        },
      ),
    );
  }
}
