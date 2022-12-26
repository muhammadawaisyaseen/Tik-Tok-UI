import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../widgets/post_template.dart';

class Post3 extends StatelessWidget {
  const Post3({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        username: 'bajwadonshahkotda',
        noOfLikes: '1.2M',
        noOfMessages: '567643',
        videoDesc: 'Jat_Da_Muqabla',
        noOfshares: '8671',
        userPost: Container(
          color: Color.fromARGB(255, 107, 55, 73),
        )
        );
  }
}