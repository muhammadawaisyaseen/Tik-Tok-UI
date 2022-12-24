import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tik_tok_ui/screens/add_screen.dart';
import 'package:tik_tok_ui/screens/inbox_screen.dart';
import 'package:tik_tok_ui/screens/profile_screen.dart';
import 'package:tik_tok_ui/screens/search_screen.dart';

import 'home_screen.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int curInd = 0;
  List pages = [
    HomePage(),
    SearchPage(),
    AddPage(),
    InboxPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[curInd],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          onTap: (value) {
            setState(() {
              curInd = value;
            });
          },
          currentIndex: curInd,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.black), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                label: 'Add'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                  color: Colors.black,
                ),
                label: 'Inbox'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                label: 'Profile'),
          ]),
    );
  }
}
