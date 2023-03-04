import 'package:flutter/material.dart';

import '../color/myColors.dart';


class Post1 extends StatelessWidget {
  const Post1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.colorPurple,
    );
  }
}