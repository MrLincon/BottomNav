import 'package:flutter/material.dart';

import '../color/myColors.dart';
import '../post/post1.dart';
import '../post/post2.dart';
import '../post/post3.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.colorGreen,
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          Post1(),
          Post2(),
          Post3(),
        ],
      ),
    );
  }

}