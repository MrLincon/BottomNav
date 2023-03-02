import 'package:flutter/material.dart';

import '../color/myColors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.colorGreen,
      body: Center(
        child: Text(
          "Profile Screen",
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