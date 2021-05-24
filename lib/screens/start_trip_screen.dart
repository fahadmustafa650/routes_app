import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';
import 'driver_verification_screen.dart';

class StartTripScreen extends StatefulWidget {
  static final id = "/start_trip_screen";
  @override
  _StartTripScreenState createState() => _StartTripScreenState();
}

class _StartTripScreenState extends State<StartTripScreen> {
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
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff164172),
          ),
        ),
        title: Text(
          'Start Trip',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: darkBlueColor,
      body: Container(
        width: screenWidth * 1,
        height: screenHeight * 1,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'Driver',
                style: TextStyle(color: lightOrangeColor, fontSize: 25),
              ),
              SizedBox(
                height: 15,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 35,
                child: Icon(
                  Icons.check_circle_outline,
                  color: darkBlueColor,
                  size: 60,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Verified',
                style: TextStyle(color: lightOrangeColor, fontSize: 25),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {},
                child: CustomTextIconWidget(
                  title: 'Start Driving',
                  screenWidth: screenWidth,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextIconWidget extends StatelessWidget {
  final title;
  const CustomTextIconWidget(
      {Key key, @required this.screenWidth, @required this.title})
      : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: screenWidth * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          color: Colors.white,
          borderRadius: BorderRadius.circular(40)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
          Image(
            width: 50,
            height: 50,
            image: AssetImage('assets/images/direction_icon.png'),
          )
        ],
      ),
    );
  }
}
