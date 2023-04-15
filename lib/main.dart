import 'package:colorguessgame/page/firstscreen.dart';
import 'package:colorguessgame/page/secondscreen.dart';
import 'package:colorguessgame/page/thirdscreen.dart';
import 'package:flutter/material.dart';

import 'page/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showSplash = true;
  showSplashScreen() {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        showSplash = false;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    showSplashScreen();
    super.initState();
    
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: showSplash==true?SplashScreen():FirstScreen(),
    );
  }
}
