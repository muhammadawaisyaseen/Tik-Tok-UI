import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/post_template.dart';

class Post2 extends StatelessWidget {
  const Post2({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        username: 'hananmalikyaseen',
        noOfLikes: '2.3B',
        noOfMessages: '567643',
        videoDesc: 'Apna_swag_ay_sada',
        noOfshares: '158671',
        userPost: Container(
          color: Colors.yellow,
        ));
  }
}
