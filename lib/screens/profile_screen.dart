import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tik_tok_ui/screens/tab_bars/first_tab.dart';
import 'package:tik_tok_ui/screens/tab_bars/second_tab.dart';
import 'package:tik_tok_ui/screens/tab_bars/third_tab.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Center(
            child: Text(
              'Malik Awais Yaseen',
              style: TextStyle(color: Colors.black),
            ),
          ),
          leading: const Icon(
            Icons.person_add,
            color: Colors.black,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 12),
              child: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            )
          ],
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[100], shape: BoxShape.circle),
              width: 120,
              height: 120,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'malikawaisyaseennarang',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            Row(
              children: [
                //following
                Expanded(
                  child: Column(
                    children: const [
                      Text(
                        '276',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Following',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                //followers
                Expanded(
                  child: Column(
                    children: const [
                      Text(
                        '6571',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Followers',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
                //Likes
                Expanded(
                  child: Column(
                    children: const [
                      Text(
                        '9706',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Likes',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(15)),
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                // camera
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.grey[800],
                      )),
                ),
                // Bookmark
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(15)),
                      child: Icon(
                        Icons.bookmark_border_outlined,
                        color: Colors.grey[800],
                      )),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'bio here',
              style: TextStyle(color: Colors.grey[700]),
            ),
            const SizedBox(
              height: 15,
            ),
            const TabBar(tabs: [
              Icon(
                Icons.grid_3x3,
                color: Colors.black,
              ),
              Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              Icon(
                Icons.lock_outline_rounded,
                color: Colors.black,
              ),
            ]),
            const Expanded(
              child: TabBarView(children: [
                FirstTab(),
                SecondTab(),
                ThirdTab(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
