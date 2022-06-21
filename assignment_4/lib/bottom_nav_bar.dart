import 'package:assignment_4/pages/account.dart';
import 'package:assignment_4/pages/add.dart';
import 'package:assignment_4/pages/chat.dart';
import 'package:assignment_4/pages/home.dart';
import 'package:assignment_4/pages/my_adds.dart';
import 'package:flutter/material.dart';

class BottomNavController extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  @override
  List pages = [
    Home(),
    MyAdds(),
    Add(),
    Chat(),
    Account()
  ];

  int currentIndex = 0;

  Widget build(BuildContext ctx) {
    return Scaffold(
      backgroundColor: Colors.amber,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "My Adds"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.messenger_outline_sharp),label: "Chat"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: "Account")
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
        setState(() {
          currentIndex = index;
        });
        }
      ),
      body: pages[currentIndex],
    );
  }
}
