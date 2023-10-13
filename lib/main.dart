import 'package:flutter/material.dart';
import 'package:flutter_basics_1/CircularProgress.dart';
import 'package:flutter_basics_1/Thirdpage.dart';
import 'package:flutter_basics_1/tabview.dart';
// import 'package:flutter_basics_1/Intropage.dart';
// import 'package:flutter_basics_1/SplashPage.dart';
// import 'package:flutter_basics_1/Thirdpage.dart';
// import 'package:flutter_basics_1/widgets/rounded_btn.dart';
// import 'package:intl/intl.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'dart:async';
// import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyFirstApp',
      theme: ThemeData(),
      home: CricularProgressIndicatorWidget(),
    );
  }
}

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  int myIndex = 0;
  List <Widget> widgetList = [
    TabView(),
    ThirdPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: "Home",
                backgroundColor: Colors.grey,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.shop,
                  color: Colors.white,
                ),
                label: "Shop",
                backgroundColor: Colors.grey,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                  color: Colors.white,
                ),
                label: "Chat",
                backgroundColor: Colors.grey,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                label: "Profile",
                backgroundColor: Colors.grey,
              ),
            ]),
        body: Center(
          child: widgetList[myIndex],
        ));
  }
}
