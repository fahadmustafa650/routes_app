import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';
import 'package:routes_app/Screens/routes_today_screen.dart';

import 'update_profile_screen.dart';

class DeliveryPointsScreen extends StatelessWidget {
  static final id = "/delivery_point_screen";
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
                Navigator.pushNamed(context, UpdateProfileScreen.id);
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
          '497 Evergreen Rd.',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: screenWidth * 1,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Text(
                'Delivery Points',
                style: TextStyle(
                  color: lightOrangeColor,
                  fontSize: 23,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.025,
              ),
              Divider(
                color: Colors.white,
                thickness: 1,
              ),
              CustomAddressIconTile(
                titleText: '375 East Ave.',
                subtitleText:
                    '\n4.1 m via Washington Bivd\nArrival Time: 9:51am',
                textColor: Colors.white,
              ),
              Divider(
                color: Colors.white,
                thickness: 1,
              ),
              CustomAddressIconTile(
                titleText: '380 East Ave.',
                subtitleText:
                    '\n4.1 m via Washington Bivd\nArrival Time: 9:51am',
              ),
              Divider(
                color: Colors.white,
                thickness: 1,
              ),
              CustomAddressIconTile(
                titleText: '383 East Ave.',
                subtitleText:
                    '\n4.1 m via Washington Bivd\nArrival Time: 9:51am',
              ),
              Divider(
                color: Colors.white,
                thickness: 1,
              ),
              CustomAddressIconTile(
                titleText: '385 East Ave.',
                subtitleText:
                    '\n4.1 m via Washington Bivd\nArrival Time: 9:51am',
              ),
              Divider(
                color: Colors.white,
                thickness: 1,
              ),
              CustomAddressIconTile(
                titleText: '390 East Ave.',
                subtitleText:
                    '\n4.1 m via Washington Bivd\nArrival Time: 9:51am',
              ),
              Divider(
                color: Colors.white,
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAddressIconTile extends StatelessWidget {
  final String titleText;
  final String subtitleText;
  final textColor;

  const CustomAddressIconTile(
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
      trailing: CircleAvatar(
        radius: 50,
        backgroundColor: textColor == Colors.white ? Colors.white : Colors.blue,
        child: Icon(
          Icons.location_on,
          size: 40,
          color: textColor == Colors.white ? Colors.blue : Colors.white,
        ),
      ),
    );
  }
}
