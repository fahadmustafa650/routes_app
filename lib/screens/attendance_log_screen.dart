import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';

import 'delivery_points_screen.dart';

class AttendanceLogScreen extends StatelessWidget {
  static final id = "/attendance_log_screen";
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
                Navigator.pushNamed(context, DeliveryPointsScreen.id);
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
          'Attendance Log',
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
              height: 30,
            ),
            Text(
              "Simon's Attendance",
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
              height: 10,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  startDateBtn(context),
                  SizedBox(
                    width: 15,
                  ),
                  endDateBtn()
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: screenWidth * 0.2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Attendance',
                        style: TextStyle(color: lightOrangeColor, fontSize: 25),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '80%',
                        style: TextStyle(color: lightOrangeColor, fontSize: 25),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Leave Status',
                        style: TextStyle(color: lightOrangeColor, fontSize: 25),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'CL - 2, SL-5',
                        style: TextStyle(color: lightOrangeColor, fontSize: 25),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  GestureDetector startDateBtn(BuildContext ctx) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 130,
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Start Date'),
            SizedBox(
              width: 3,
            ),
            Icon(Icons.calendar_today)
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
      ),
    );
  }

  GestureDetector endDateBtn() {
    return GestureDetector(
      child: Container(
        width: 130,
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('End Date'),
            SizedBox(
              width: 3,
            ),
            Icon(Icons.calendar_today)
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
