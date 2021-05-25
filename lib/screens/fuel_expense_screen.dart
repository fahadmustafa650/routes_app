import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';
import 'package:routes_app/widgets/text_icons_widget.dart';

import 'labour_charges_screen.dart';

const textStyle = TextStyle(color: lightOrangeColor, fontSize: 25);

class FuelExpenseScreen extends StatefulWidget {
  static final id = "/fuel_expense_screen";
  @override
  _FuelExpenseScreenState createState() => _FuelExpenseScreenState();
}

class _FuelExpenseScreenState extends State<FuelExpenseScreen> {
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
                //Navigator.pushNamed(context, LabourChargesScreen.id);
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
          'Fuel Expense',
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
              height: screenHeight * 0.07,
            ),
            Text(
              'Fuel Type',
              style: textStyle,
            ),
            SizedBox(
              height: screenHeight * 0.02,
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
                      'Petrol',
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
                      'Diesel',
                      style: textStyle,
                    )
                  ],
                )
              ],
            ),
            divider,
            quantityField(screenWidth),
            divider,
            priceField(screenWidth: screenWidth),
            divider,
            totolAmount(screenWidth: screenWidth),
            divider,
            SizedBox(
              height: screenWidth * 0.1,
            ),
            GestureDetector(
              onTap: () {},
              child: CustomIconsTextWidget(
                title: 'Submit',
                screenWidth: screenWidth,
              ),
            )
          ],
        ),
      ),
    );
  }

  Row quantityField(double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Quantity',
          style: textStyle,
        ),
        SizedBox(
          width: screenWidth * 0.28,
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
        SizedBox(
          width: 10,
        ),
        Text(
          'Ltrs',
          style: textStyle,
        )
      ],
    );
  }

  Widget priceField({double screenWidth}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Price',
          style: textStyle,
        ),
        SizedBox(
          width: screenWidth * 0.33,
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
        SizedBox(
          width: 10,
        ),
        Text(
          'Rs',
          style: textStyle,
        )
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
              SizedBox(
                width: 10,
              ),
              Text(
                'Rs',
                style: textStyle,
              ),
            ],
          ),
        )
      ],
    );
  }
}
