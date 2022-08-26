import 'dart:async';

import 'package:flutter/material.dart';
import 'package:glootapp/Screen/onbording.dart';

import 'StartScreen.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    _navigatetologinScreen();
  }

  void _navigatetologinScreen() async {
    Timer(
        Duration(seconds: 3),
        (() => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => StartPage()))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6DD3E1),
      body: Container(
        alignment: Alignment.center,
        child: Image(
          image: AssetImage('assets/images/logo.png'),
        ),
      ),
    );
  }
}
