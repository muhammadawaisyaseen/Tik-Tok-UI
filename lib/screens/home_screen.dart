import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tik_tok_ui/screens/posts/post1.dart';
import 'package:tik_tok_ui/screens/posts/post2.dart';
import 'package:tik_tok_ui/screens/posts/post3.dart';

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
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: PageController(initialPage: 0),
        children: const [Post1(), Post2(), Post3()],
      ),
    );
  }
}
