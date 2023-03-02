import 'package:flutter/material.dart';

import '../color/myColors.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.colorPurpleLight,
      body: Center(
        child: Text(
          "Favourite Screen",
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