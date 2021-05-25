import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:routes_app/Constants/constants.dart';
import 'package:routes_app/screens/order_placing_screen.dart';

import 'delivery_point_details_screen.dart';

class PaymentSectionScreen extends StatefulWidget {
  static final id = "/payment_section_screen";
  @override
  _PaymentSectionScreenState createState() => _PaymentSectionScreenState();
}

class _PaymentSectionScreenState extends State<PaymentSectionScreen> {
  int groupValue;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    //final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: darkBlueColor,
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, DeliveryPointDetailsScreen.id);
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
          'Payment Section',
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
                height: 20,
              ),
              Text(
                'Mode Of Payment',
                style: TextStyle(
                  color: lightOrangeColor,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: screenWidth * 1,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    cashRadioBtn(),
                    cardRadioBtn(),
                    onlineRadioBtn(),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.card_membership,
                  color: Colors.white,
                ),
                title: Text(
                  'Customer',
                  style: TextStyle(
                      color: lightOrangeColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  '376 East Ave',
                  style: TextStyle(color: lightOrangeColor, fontSize: 22),
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 1,
              ),
              ListTile(
                leading: Icon(
                  Icons.card_membership,
                  color: Colors.white,
                ),
                title: Text(
                  'AMOUNT',
                  style: TextStyle(
                      color: lightOrangeColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  '\$400.00 USD',
                  style: TextStyle(color: lightOrangeColor, fontSize: 22),
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 1,
              ),
              ListTile(
                leading:
                    Icon(Icons.calendar_today_outlined, color: Colors.white),
                title: Text(
                  'DATE',
                  style: TextStyle(
                      color: lightOrangeColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'MAY 11,2011',
                  style: TextStyle(color: lightOrangeColor, fontSize: 22),
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 1,
              ),
              ListTile(
                leading: RotatedBox(
                  quarterTurns: 1,
                  child: Icon(
                    FontAwesomeIcons.tag,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  'ORDER NUMBER',
                  style: TextStyle(
                      color: lightOrangeColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  'YKM45DGH342345',
                  style: TextStyle(color: lightOrangeColor, fontSize: 22),
                ),
              ),
              Divider(
                color: Colors.white,
                thickness: 1,
              ),
              Container(
                width: screenWidth * 0.75,
                height: 120,
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(),
                        Text(
                          'Turn on Bluetooth',
                          style: TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.info_outline,
                          color: Colors.lightBlueAccent,
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Icon(
                      Icons.bluetooth,
                      size: 40,
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, OrderPlacingScreen.id);
                },
                child: CustomTextIconWhiteWidget(
                  screenWidth: screenWidth,
                  title: 'Confirm & Pay',
                  iconData: Icons.arrow_forward,
                ),
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }

  Row cashRadioBtn() {
    return Row(
      children: [
        Radio(
          value: 0,
          activeColor: Colors.purple,
          groupValue: groupValue,
          // fillColor: MaterialStateProperty.all(Colors.white),
          onChanged: (value) {
            setState(() {
              groupValue = value;
            });
          },
        ),
        Text(
          'Cash',
          style: TextStyle(
            color: groupValue != 0 ? lightOrangeColor : Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }

  Row cardRadioBtn() {
    return Row(
      children: [
        Radio(
          value: 1,
          activeColor: Colors.purple,
          groupValue: groupValue,
          // fillColor: MaterialStateProperty.all(Colors.white),
          onChanged: (value) {
            setState(() {
              groupValue = value;
            });
          },
        ),
        Text(
          'Card',
          style: TextStyle(
            color: groupValue != 1 ? lightOrangeColor : Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }

  Row onlineRadioBtn() {
    return Row(
      children: [
        Radio(
          value: 2,
          activeColor: Colors.purple,
          groupValue: groupValue,
          // fillColor: MaterialStateProperty.all(Colors.white),
          onChanged: (value) {
            setState(() {
              groupValue = value;
            });
          },
        ),
        Text(
          'Online',
          style: TextStyle(
            color: groupValue != 2 ? lightOrangeColor : Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
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
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: 30,
            child: Icon(
              iconData,
              color: lightOrangeColor,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
