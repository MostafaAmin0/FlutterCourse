import 'package:flutter/material.dart';
import 'package:lab_g2/Screens/test_route_screen.dart';

class AddContactScreen extends StatelessWidget {
  const AddContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ElevatedButton(
            child: const Text("Add Contact"),
            onPressed: () {
              //navigate to new screen
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const TestRouteScreen();
                  },
                ),
              );
            },
          ),
          ElevatedButton(
            child: const Text("Named route"),
            onPressed: () {
              //navigate to new screen
              Navigator.of(context).pushNamed("/test");
            },
          ),
        ],
      ),
    );
  }
}
