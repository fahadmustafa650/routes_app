import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';
import 'package:routes_app/widgets/text_icons_widget.dart';

import 'payment_section_screen.dart';

class LabourChargesScreen extends StatefulWidget {
  static final id = "/labour_charges_screen";
  @override
  _LabourChargesScreenState createState() => _LabourChargesScreenState();
}

class _LabourChargesScreenState extends State<LabourChargesScreen> {
  int groupValue;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final divider = Divider(
      color: Colors.white,
      thickness: 1,
      indent: screenWidth * 0.1,
      endIndent: screenWidth * 0.1,
    );
    return Scaffold(
      backgroundColor: darkBlueColor,
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, PaymentSectionScreen.id);
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
          'Labour Charges',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
            unselectedWidgetColor: Colors.white, disabledColor: Colors.white),
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
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
                      'Loading',
                      style: textStyle,
                    )
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 1,
                      activeColor: Colors.purple,
                      //fillColor: MaterialStateProperty.all(Colors.white),
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value;
                        });
                      },
                    ),
                    Text(
                      'Unloading',
                      style: textStyle,
                    )
                  ],
                )
              ],
            ),
            divider,
            chargesField(screenWidth),
            divider,
            noOfPeopleField(screenWidth: screenWidth),
            divider,
            totolAmount(screenWidth: screenWidth),
            divider,
            SizedBox(
              height: screenWidth * 0.1,
            ),
            GestureDetector(
              onTap: () {},
              child: CustomIconsTextWidget(
                title: 'Upload Receipt',
                screenWidth: screenWidth,
              ),
            )
          ],
        ),
      ),
    );
  }

  Row chargesField(double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Charges/Person',
          style: textStyle,
        ),
        SizedBox(
          width: screenWidth * 0.05,
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 5, top: 5),
          width: screenWidth * 0.18,
          height: 35,
          child: Text(
            '10',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ],
    );
  }

  Widget noOfPeopleField({double screenWidth}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'No of People',
          style: textStyle,
        ),
        SizedBox(
          width: screenWidth * 0.12,
        ),
        Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 5, top: 5),
          width: screenWidth * 0.18,
          height: 35,
          child: Text(
            '10',
            style: TextStyle(fontSize: 25),
          ),
        ),
      ],
    );
  }

  Widget totolAmount({double screenWidth}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Total Amount',
          style: textStyle,
        ),
        SizedBox(
          width: screenWidth * 0.1,
        ),
        Container(
          child: Row(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: 5, top: 5),
                width: screenWidth * 0.18,
                height: 35,
                child: Text(
                  '1200.00',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
