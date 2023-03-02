import 'package:flutter/material.dart';

import '../color/myColors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.colorPurple,

      body:  Center(
        child: Text(
          "Home Screen",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: MyColors.colorWhite,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}