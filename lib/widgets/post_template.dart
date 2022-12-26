import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'buttons.dart';

class PostTemplate extends StatelessWidget {
  PostTemplate(
      {required this.username,
      required this.videoDesc,
      required this.noOfLikes,
      required this.noOfMessages,
      required this.noOfshares,
      required this.userPost,
      super.key});

  String username;
  String videoDesc;
  String noOfLikes;
  String noOfMessages;
  String noOfshares;
  final userPost;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          userPost,
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              alignment: Alignment(-1, 1),
              // color: Colors.brown,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '@' + username,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                      // strutStyle: TextStyle(color: Colors.white),
                      // selectionColor: Colors.white,
                      text: TextSpan(children: [
                    TextSpan(text: videoDesc),
                    TextSpan(
                        text: ' #fyp #flutter',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                  ]))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              alignment: Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Mybuttons(icon: Icons.favorite, number: noOfLikes),
                  Mybuttons(
                      icon: Icons.chat_bubble_outline, number: noOfMessages),
                  Mybuttons(icon: Icons.send, number: noOfshares),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
