import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/buttons.dart';

class Post1 extends StatelessWidget {
  const Post1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              alignment: Alignment(-1, 1),
              // color: Colors.brown,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '@malikawaisyaseen123',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                      // strutStyle: TextStyle(color: Colors.white),
                      // selectionColor: Colors.white,
                      text: const TextSpan(children: [
                    TextSpan(text: 'tiktok ui tutorial'),
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
                  Mybuttons(icon: Icons.favorite, number: '1.20M'),
                  Mybuttons(icon: Icons.chat_bubble_outline, number: '6584'),
                  Mybuttons(icon: Icons.send, number: '256'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
