import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';
import 'package:routes_app/screens/driver_verification_screen.dart';

import 'attendance_log_screen.dart';
import 'delivery_invoice_screen.dart';
import 'expense_manager_screen.dart';
import 'routes_covered_screen.dart';
import 'routes_today_screen.dart';
import 'update_profile_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static final id = "/welcome_screen";
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, DriverVerificationScreen.id);
              },
              child: Image(
                image: AssetImage('assets/images/person_trailing.png'),
              ))
        ],
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff164172),
          ),
        ),
        title: Text(
          'Welcome Screen',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: darkBlueColor,
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
              'Hi Simon',
              style: TextStyle(color: lightOrangeColor, fontSize: 25),
            ),
            SizedBox(
              height: 10,
            ),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/profile_pic.jpeg'),
            ),
            SizedBox(
              height: 15,
            ),
            routesTodayBtn(context, screenWidth),
            SizedBox(
              height: 15,
            ),
            Divider(
              indent: screenWidth * 0.08,
              endIndent: screenWidth * 0.08,
              thickness: 1,
              color: Colors.white,
            ),
            SizedBox(
              height: 15,
            ),
            routesCoveredBtn(context, screenWidth),
            SizedBox(
              height: 15,
            ),
            attendanceLogBtn(context, screenWidth),
            SizedBox(
              height: 15,
            ),
            profileUpdationBtn(context, screenWidth),
            SizedBox(
              height: 15,
            ),
            expenseManager(context, screenWidth),
          ],
        ),
      ),
    );
  }

  GestureDetector expenseManager(BuildContext context, double screenWidth) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ExpenseManagerScreen.id);
      },
      child: WhiteTextButton(
        screenWidth: screenWidth,
        title: 'Expense Manager',
      ),
    );
  }

  GestureDetector profileUpdationBtn(BuildContext context, double screenWidth) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, UpdateProfileScreen.id);
      },
      child: WhiteTextButton(
        screenWidth: screenWidth,
        title: 'Profile Updation',
      ),
    );
  }

  GestureDetector attendanceLogBtn(BuildContext context, double screenWidth) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AttendanceLogScreen.id);
      },
      child: WhiteTextButton(
        screenWidth: screenWidth,
        title: 'Attendance Log',
      ),
    );
  }

  GestureDetector routesCoveredBtn(BuildContext context, double screenWidth) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RoutesCoveredScreen.id);
      },
      child: WhiteTextButton(
        screenWidth: screenWidth,
        title: 'Routes Covered',
      ),
    );
  }

  GestureDetector routesTodayBtn(BuildContext context, double screenWidth) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RoutesTodayScreen.id);
      },
      child: WhiteTextButton(
        screenWidth: screenWidth,
        title: 'Routes Today',
      ),
    );
  }
}

class WhiteTextButton extends StatelessWidget {
  final title;
  const WhiteTextButton(
      {Key key, @required this.screenWidth, @required this.title})
      : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.6,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
    );
  }
}
