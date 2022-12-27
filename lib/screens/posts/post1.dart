import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tik_tok_ui/widgets/post_template.dart';

import '../../widgets/buttons.dart';

class Post1 extends StatelessWidget {
  const Post1({super.key});

  @override
  Widget build(BuildContext context) {
    return PostTemplate(
        username: 'awaisyaseen',
        noOfLikes: '1.2M',
        noOfMessages: '5643',
        videoDesc: ' Yaraa_nal_bharaa',
        noOfshares: '869271',
        userPost: Container(
          color: Colors.blue[300],
        ));
  }
}
