import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';
import 'package:routes_app/widgets/animated_rotation.dart';
import 'package:routes_app/widgets/text_icons_widget.dart';

import 'attendance_log_screen.dart';

class DriverVerificationScreen extends StatefulWidget {
  static final id = "/driver_verificaiton_screen";
  @override
  _DriverVerificationScreenState createState() =>
      _DriverVerificationScreenState();
}

class _DriverVerificationScreenState extends State<DriverVerificationScreen>
    with SingleTickerProviderStateMixin {
  AnimationController rotationController;

  @override
  void initState() {
    rotationController = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    rotationController.forward(from: 0.0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: darkBlueColor,
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AttendanceLogScreen.id);
              },
              child: Image(
                image: AssetImage('assets/images/person_trailing.png'),
              ))
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff164172),
          ),
        ),
        title: Text(
          'Driver Verification',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: screenWidth * 1,
        height: screenHeight * 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Existng Driver',
              style: TextStyle(color: lightOrangeColor, fontSize: 24),
            ),
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.fingerprint_sharp,
              color: lightOrangeColor,
              size: 55,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Place your finger',
              style: TextStyle(
                  color: lightOrangeColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              color: Colors.white,
              thickness: 1,
              indent: screenWidth * 0.15,
              endIndent: screenWidth * 0.15,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Change in Driver or Trouble in Login',
              style: TextStyle(
                color: lightOrangeColor,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              onTap: () {},
              child: CustomIconsTextWidget(
                screenWidth: screenWidth,
                title: 'Upload License',
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              color: Colors.white,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            CustomIconsTextWidget(
              screenWidth: screenWidth,
              title: 'Speedometer',
            ),
            SizedBox(
              height: 25,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 35,
              child: RotationArrow(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Verifying',
              style: TextStyle(
                  color: lightOrangeColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
