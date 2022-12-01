import 'dart:async';

import 'package:app/bottom.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';
import 'Home.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void finish() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => bottom()));
  }

  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => bottom())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: 12 * SizeConfig.heightMultiplier,
                bottom: 10 * SizeConfig.heightMultiplier),
            child: Text(
              'Time is Precious',
              style: TextStyle(
                  fontSize: 5 * SizeConfig.heightMultiplier,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Image.asset(
              'images/splash.png',
              height: 40 * SizeConfig.heightMultiplier,
            ),
          ),
        ],
      ),
    );
  }
}
