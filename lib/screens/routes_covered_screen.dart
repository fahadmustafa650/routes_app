import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';

import 'fuel_expense_screen.dart';

class RoutesCoveredScreen extends StatelessWidget {
  static final id = "/routes_covered_screen";
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
                Navigator.pushNamed(context, FuelExpenseScreen.id);
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
          'Routes Covered',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenWidth * 1,
              height: screenHeight * 0.3,
              child: Image(
                image: AssetImage('assets/images/map.png'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            CustomAddressTile(
              titleText: '375 East Ave.',
              subtitleText: '\n4.1 m via Washington Bivd\nArrival Time: 9:51am',
              // textColor: Colors.white,
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Divider(
              thickness: 1,
              color: Colors.white,
            ),
            CustomAddressTile(
              titleText: '375 East Ave.',
              subtitleText: '\n4.1 m via Washington Bivd\nArrival Time: 9:51am',
              //textColor: Colors.white,
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Divider(
              thickness: 1,
              color: Colors.white,
            ),
            CustomAddressTile(
              titleText: '375 East Ave.',
              subtitleText: '\n4.1 m via Washington Bivd\nArrival Time: 9:51am',
              //textColor: Colors.white,
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Divider(
              thickness: 1,
              color: Colors.white,
            ),
            CustomAddressTile(
              titleText: '375 East Ave.',
              subtitleText: '\n4.1 m via Washington Bivd\nArrival Time: 9:51am',
              //textColor: Colors.white,
            ),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Divider(
              thickness: 1,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAddressTile extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  final textColor;

  const CustomAddressTile(
      {Key key,
      this.titleText,
      this.subtitleText,
      this.textColor = lightOrangeColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 30),
      title: Text(
        titleText,
        style: TextStyle(
            color: textColor, fontSize: 18, fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        subtitleText,
        style: TextStyle(
            color: textColor, fontSize: 18, fontWeight: FontWeight.w700),
      ),
      // trailing: CircleAvatar(
      //   radius: 50,
      //   backgroundColor: textColor == Colors.white ? Colors.white : Colors.blue,
      //   child: Icon(
      //     Icons.location_on,
      //     size: 40,
      //     color: textColor == Colors.white ? Colors.blue : Colors.white,
      //   ),
      // ),
    );
  }
}
