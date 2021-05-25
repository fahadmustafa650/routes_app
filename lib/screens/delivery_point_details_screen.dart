import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';

import 'delivery_invoice_screen.dart';
import 'support_screen.dart';

class DeliveryPointDetailsScreen extends StatelessWidget {
  static final id = "/delivery_point_details_screen";
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final divider = Divider(
      thickness: 0.5,
      color: Colors.white,
    );
    return Scaffold(
      backgroundColor: darkBlueColor,
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, DeliveryInvoiceScreen.id);
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
          '375 East Ave',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: screenWidth * 1,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              'Delivery Point Screen',
              style: textStyle,
            ),
            SizedBox(height: 15),
            divider,
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.1,
              ),
              child: personDetails(),
            ),
            divider,
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.1,
              ),
              child: customerAddress(),
            ),
            divider,
            SizedBox(
              height: 10,
            ),
            Text(
              'Scan QR',
              style: textStyle,
            ),
            Expanded(
              child: Container(
                width: screenWidth * 0.8,
                child: Image(
                  image: AssetImage('assets/images/qr_code_img.png'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row customerAddress() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customer Address',
              style:
                  textStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              '376 East Ave',
              style: textStyle,
            ),
            Text(
              '4.1 mi via Washington Blvd',
              style: textStyle,
            ),
          ],
        ),
      ],
    );
  }

  Widget personDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contact Person',
              style:
                  textStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              'Ali Hussain',
              style: textStyle,
            ),
            Text(
              '+9234543643',
              style: textStyle,
            ),
          ],
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 50,
          backgroundImage: AssetImage('assets/images/profile_pic1.jpeg'),
          //radius: ,
        ),
      ],
    );
  }
}
