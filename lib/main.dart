import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import 'bottomNav/favouriteScreen.dart';
import 'bottomNav/homeScreen.dart';
import 'bottomNav/profileScreen.dart';
import 'bottomNav/searchScreen.dart';
import 'color/myColors.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: MyColors.colorWhite, // Change status bar color here
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _appBarTextColor = MyColors.colorPurple;
  int _selectedIndex = 0;

  void _changeAppBarTextColor(Color color) {
    setState(() {
      _appBarTextColor = color ;
    });
  }



  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    FavouriteScreen(),
    SearchScreen(),
    ProfileScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.colorWhite,
      appBar: AppBar(
        title: Text(
          "Bottom Navigation",
          style: TextStyle(
          fontSize: 20,
            color: _appBarTextColor
          ),
        ),
        centerTitle: true,
        backgroundColor: MyColors.colorWhite,
        elevation: 0,
      ),
      body: Stack(

        children: [
          _widgetOptions.elementAt(_selectedIndex),
          // Your app content goes here
          Positioned(
            left: 24,
            right: 24,
            bottom: 24,
            child: Container(
              // margin: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: MyColors.colorWhite,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(.1),
                  )
                ],
                borderRadius: const BorderRadius.all(Radius.circular(60)),
              ),
              child: SafeArea(
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                  child: GNav(
                    rippleColor: Colors.grey[100]!,
                    hoverColor: Colors.grey[100]!,
                    gap: 8,
                    haptic: false,
                    curve: Curves.easeInCubic,
                    activeColor: Colors.white,
                    iconSize: 24,
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    duration: const Duration(milliseconds: 400),
                    color: Colors.black,
                    tabs: const [
                      GButton(
                        icon: LineIcons.home,
                        backgroundColor: MyColors.colorPurple,

                        // text: "Home",
                      ),
                      GButton(
                        icon: LineIcons.heart,
                        backgroundColor: MyColors.colorPurpleLight,
                        // text: "Favourite",
                      ),
                      GButton(
                        icon: LineIcons.search,
                        backgroundColor: MyColors.colorBlue,
                        // text: "Search",
                      ),
                      GButton(
                        icon: LineIcons.user,
                        backgroundColor: MyColors.colorGreen,
                        // text: "Profile",
                      ),
                    ],
                    selectedIndex: _selectedIndex,
                    onTabChange: (index) {
                      setState(() {
                        _selectedIndex = index;
                        switch(index){
                          case 0:
                            _changeAppBarTextColor(MyColors.colorPurple);
                            break;
                          case 1:
                            _changeAppBarTextColor(MyColors.colorPurpleLight);
                            break;
                          case 2:
                            _changeAppBarTextColor(MyColors.colorBlue);
                            break;
                          case 3:
                            _changeAppBarTextColor(MyColors.colorGreen);
                            break;
                        }
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }



  // final TextStyle appBarTextStyle = const TextStyle(
  //   color: _appBarTextColor,
  //   fontSize: 20,
  // );



}