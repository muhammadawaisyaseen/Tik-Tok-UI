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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: BottomNavigationBar(

              // fixedColor: Colors.amber,
              selectedItemColor: Colors.red,
              onTap: (value) {
                setState(() {
                  curInd = value;
                });
              },
              currentIndex: curInd,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.search,
                    ),
                    label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.add,
                    ),
                    label: 'Add'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.message,
                    ),
                    label: 'Inbox'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                    ),
                    label: 'Profile'),
              ]),
        ),
      ),
    );
  }
}
