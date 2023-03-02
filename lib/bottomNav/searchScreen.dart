import 'package:flutter/material.dart';

import '../color/myColors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.colorBlue,
      body: Center(
        child: Text(
          "Search Screen",
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
