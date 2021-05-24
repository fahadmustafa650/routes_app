import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';
import 'package:routes_app/Screens/toll_charges_screen.dart';

import 'expense_manager_screen.dart';

class RoutesTodayScreen extends StatelessWidget {
  static final id = "/routes_today_screen";
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, ExpenseManagerScreen.id);
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
          'Routes Today',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTopContainerWidget(screenHeight: screenHeight),
            // Container(
            //   width: double.infinity,
            //   height: screenHeight * 0.2,
            //   color: Colors.lightBlue,
            //   child: null,
            // )
            CustomDirectionsTile(
              titleText: 'Through 375 East Ave.',
              subtitleText: '4.1 mi via Wasington Blvd\nArrival Time: 9:34 AM',
            ),
            CustomDirectionsTile(
              titleText: 'Through 385 East Ave.',
              subtitleText: '4.2 mi via Wasington Blvd\nArrival Time: 9:35 AM',
              textColor: Colors.blueAccent,
            ),
            CustomDirectionsTile(
              titleText: 'Through 387 East Ave.',
              subtitleText: '4.3 mi via Wasington Blvd\nArrival Time: 9:36 AM',
              textColor: Colors.blueAccent,
            ),
            CustomDirectionsTile(
              titleText: 'Through 387 East Ave.',
              subtitleText: '4.5 mi via Wasington Blvd\nArrival Time: 9:37 AM',
              textColor: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTopContainerWidget extends StatelessWidget {
  const CustomTopContainerWidget({
    Key key,
    @required this.screenHeight,
  }) : super(key: key);

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.3,
      width: double.infinity,
      color: darkBlueColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Get Directions',
            style: TextStyle(
              color: lightOrangeColor,
              fontSize: 25,
            ),
          ),
          ListTile(
            //tileColor: Colors.yellow,
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            leading: Text(
              'From',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            title: Text(
              'Current Location',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            leading: Text(
              'To',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            title: Text(
              '497 Evergreen Rd. Roseville, CA',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // CustomDirectionsTile(titleText: ,)
        ],
      ),
    );
  }
}

class CustomDirectionsTile extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  final textColor;

  const CustomDirectionsTile(
      {Key key,
      this.titleText,
      this.subtitleText,
      this.textColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.2,
      child: ListTile(
        tileColor: textColor == Colors.white ? Colors.lightBlue : Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        title: Text(
          titleText,
          style: TextStyle(
              color: textColor, fontSize: 18, fontWeight: FontWeight.w700),
        ),
        subtitle: Text(
          subtitleText,
          style: TextStyle(
            color: textColor,
            fontSize: 18,
          ),
        ),
        trailing: CircleAvatar(
          radius: 50,
          backgroundColor:
              textColor == Colors.white ? Colors.white : Colors.blue,
          child: Icon(
            Icons.arrow_forward,
            size: 35,
            color: textColor == Colors.white ? Colors.blue : Colors.white,
          ),
        ),
      ),
    );
  }
}
