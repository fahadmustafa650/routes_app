import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';

import 'order_placing_screen.dart';
import 'payment_section_screen.dart';

class DeliveryInvoiceScreen extends StatelessWidget {
  static final id = "/delivery_invoice_screen";
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, OrderPlacingScreen.id);
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
          'Delivery Invoice',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: screenWidth * 1,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTopHeadings(screenWidth: screenWidth),
              Container(
                  child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  LeadingTrailingTextsWidget(
                    leadingText: 'Milk Products',
                    trailingText: '\$400.00',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LeadingTrailingTextsWidget(
                    leadingText: 'Subtotal',
                    trailingText: '\$400.00',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LeadingTrailingTextsWidget(
                    leadingText: 'Sales Tex(7.5%)',
                    trailingText: '\$20.00',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LeadingTrailingTextsWidget(
                    leadingText: 'Tip',
                    trailingText: '\$3.00',
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  )
                ],
              )),
              Container(
                  child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  LeadingTrailingTextsWidget(
                    leadingText: 'Water Products',
                    trailingText: '\$400.00',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LeadingTrailingTextsWidget(
                    leadingText: 'Subtotal',
                    trailingText: '\$400.00',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LeadingTrailingTextsWidget(
                    leadingText: 'Sales Tex(7.5%)',
                    trailingText: '\$20.00',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LeadingTrailingTextsWidget(
                    leadingText: 'Tip',
                    trailingText: '\$3.00',
                  ),
                  Divider(
                    color: Colors.black,
                    thickness: 1,
                  )
                ],
              )),
              Container(
                  child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  LeadingTrailingTextsWidget(
                    leadingText: 'Pharma Products',
                    trailingText: '\$400.00',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LeadingTrailingTextsWidget(
                    leadingText: 'Subtotal',
                    trailingText: '\$400.00',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LeadingTrailingTextsWidget(
                    leadingText: 'Sales Tex(7.5%)',
                    trailingText: '\$20.00',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LeadingTrailingTextsWidget(
                    leadingText: 'Tip',
                    trailingText: '\$3.00',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: screenHeight * 0.12,
                    color: darkBlueColor,
                    child: Center(
                      child: proceedToPaymentBtn(
                          context, screenWidth, screenHeight),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget proceedToPaymentBtn(
      BuildContext context, double screenWidth, double screenHeight) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PaymentSectionScreen.id);
      },
      child: Container(
        width: screenWidth * 0.7,
        height: screenHeight * 0.09,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Proceed To Payment',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              width: screenWidth * 0.03,
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
      ),
    );
  }
}

class LeadingTrailingTextsWidget extends StatelessWidget {
  final String leadingText;
  final String trailingText;
  const LeadingTrailingTextsWidget(
      {Key key, this.leadingText, this.trailingText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leadingText,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          Text(
            trailingText,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ],
      ),
    );
    // return ListTile(
    //   //contentPadding: EdgeInsets.symmetric(horizontal: 15),
    //   title: Text(
    //     leadingText,
    //     style: TextStyle(color: Colors.black, fontSize: 18),
    //   ),
    //   trailing: Text(
    //     trailingText,
    //     style: TextStyle(color: Colors.black, fontSize: 18),
    //   ),
    // );
  }
}

class CustomTopHeadings extends StatelessWidget {
  const CustomTopHeadings({
    Key key,
    @required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkBlueColor,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Details of Billing',
            style: TextStyle(color: lightOrangeColor, fontSize: 20),
          ),
          Divider(
            color: Colors.white,
            thickness: 1,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTopStartEndTexts(
            screenWidth: screenWidth,
            leadingText: 'Customer:',
            trailingText: '375 East Ave',
          ),
          SizedBox(
            height: 10,
          ),
          CustomTopStartEndTexts(
            screenWidth: screenWidth,
            leadingText: 'Invoice:',
            trailingText: 'D34342',
          ),
          SizedBox(
            height: 12,
          ),
          CustomTopStartEndTexts(
            screenWidth: screenWidth,
            leadingText: 'Date:',
            trailingText: '10-05-2020',
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class CustomTopStartEndTexts extends StatelessWidget {
  final double screenWidth;
  final String leadingText;
  final String trailingText;

  const CustomTopStartEndTexts({
    Key key,
    @required this.screenWidth,
    @required this.leadingText,
    @required this.trailingText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leadingText,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Text(
            trailingText,
            style: TextStyle(
                color: lightOrangeColor,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
