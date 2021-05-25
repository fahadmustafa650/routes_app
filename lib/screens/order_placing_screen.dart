import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';
import 'package:routes_app/Screens/start_trip_screen.dart';

class OrderPlacingScreen extends StatelessWidget {
  static final id = "/order_placing_screen";
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, StartTripScreen.id);
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
          'Order Placing',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: screenWidth * 1,
        height: screenHeight * 1,
        color: darkBlueColor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                'Place New Order',
                style: TextStyle(
                  color: lightOrangeColor,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                thickness: 1,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              TextIconWidget(
                screenWidth: screenWidth,
                iconData: Icons.arrow_drop_down,
                title: 'Customer',
              ),
              SizedBox(
                height: 15,
              ),
              TextIconWidget(
                screenWidth: screenWidth,
                title: 'Commodity',
                iconData: Icons.arrow_drop_down,
              ),
              SizedBox(
                height: 15,
              ),
              TextIconWidget(
                screenWidth: screenWidth,
                title: 'Order Date',
                iconData: Icons.calendar_today,
              ),
              SizedBox(
                height: 15,
              ),
              TextIconWidget(
                screenWidth: screenWidth,
                title: 'Delivery Date',
                iconData: Icons.calendar_today,
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: CustomTextIconWidget(
                  title: 'Place Order',
                  screenWidth: screenWidth,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextIconWhiteWidget(
                title: 'Next Customer Point',
                screenWidth: screenWidth,
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextIconWhiteWidget(
                title: 'Trips Completed',
                screenWidth: screenWidth,
                iconData: Icons.logout,
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextIconWidget extends StatelessWidget {
  const TextIconWidget(
      {Key key,
      @required this.screenWidth,
      @required this.title,
      @required this.iconData})
      : super(key: key);

  final double screenWidth;
  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
      child: ListTile(
        tileColor: Colors.white,
        title: Text(
          title,
          style: TextStyle(color: Colors.grey[700], fontSize: 20),
        ),
        trailing: Icon(
          iconData,
          size: 30,
          color: Colors.black,
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
          color: lightOrangeColor,
          borderRadius: BorderRadius.circular(40)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
          CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(
              Icons.arrow_forward,
              color: lightOrangeColor,
            ),
          )
        ],
      ),
    );
  }
}

class CustomTextIconWhiteWidget extends StatelessWidget {
  final title;
  const CustomTextIconWhiteWidget(
      {Key key,
      @required this.screenWidth,
      @required this.title,
      this.iconData})
      : super(key: key);

  final double screenWidth;
  final IconData iconData;

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
          iconData == null
              ? Image(
                  width: 50,
                  height: 50,
                  image: AssetImage('assets/images/direction_icon.png'),
                )
              : Icon(
                  iconData,
                  color: Colors.black,
                  size: 35,
                ),
        ],
      ),
    );
  }
}
