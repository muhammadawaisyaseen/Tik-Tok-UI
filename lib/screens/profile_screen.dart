import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            decoration:
                BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
            width: 120,
            height: 120,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
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
                  children: [
                    Text(
                      '276',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              //follower
              Expanded(
                child: Column(
                  children: [
                    Text(
                      '190',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Follower',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
              //Likes
              Expanded(
                child: Column(
                  children: [
                    Text(
                      '9796',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Likes',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
