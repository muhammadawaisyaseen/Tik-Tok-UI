import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int curInd = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awais'),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     selectedItemColor: Colors.red,
          
      //     onTap: (value) {
      //       setState(() {
      //         curInd = value;
      //       });
      //     },
      //     currentIndex: curInd,
      //     items: const [
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.home, color: Colors.black), label: 'Home'),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.search,
      //             color: Colors.black,
      //           ),
      //           label: 'Search'),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.add,
      //             color: Colors.black,
      //           ),
      //           label: 'Add'),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.message,
      //             color: Colors.black,
      //           ),
      //           label: 'Inbox'),
      //       BottomNavigationBarItem(
      //           icon: Icon(
      //             Icons.person,
      //             color: Colors.black,
      //           ),
      //           label: 'Profile'),
      //     ]
      //     ),
    );
  }
}
