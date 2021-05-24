import 'dart:async';
import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';

import 'welcome_screen.dart';

class CustomSplashScreen extends StatefulWidget {
  static final id = "/custom_splash_screen";
  @override
  _CustomSplashScreenState createState() => _CustomSplashScreenState();
}

class _CustomSplashScreenState extends State<CustomSplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  double _opacity = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this, // the SingleTickerProviderStateMixin
      duration: Duration(seconds: 3),
    );
    _controller.forward();
    _controller.addListener(() {
      setState(() {
        _opacity = _controller.value;
      });
    });
    Timer(
        Duration(seconds: 4),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: kDarkPurpleColor,
      body: Container(
        width: screenWidth * 1,
        height: screenHeight * 1,
        child: Column(
          children: [
            Opacity(
              opacity: _opacity,
              child: Container(
                height: screenHeight * 0.6,
                width: double.infinity,
                child:
                    Image(image: AssetImage('assets/images/splash_logo.png')),
              ),
            ),
            Container(
              height: screenHeight * 0.4,
              width: double.infinity,
              color: darkBlueColor,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Opacity(
                    opacity: _opacity,
                    child: Text(
                      'Routes.NXT',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Digitally Backing Delivery',
                    style: TextStyle(color: lightOrangeColor, fontSize: 25),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
