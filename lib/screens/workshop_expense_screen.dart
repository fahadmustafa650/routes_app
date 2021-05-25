import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';
import 'package:routes_app/widgets/text_icons_widget.dart';

import 'routes_covered_screen.dart';

class WorkshopExpenseScreen extends StatelessWidget {
  static final id = "/workshop_expense_screen";

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final divider = Divider(
      color: Colors.white,
      thickness: 0.5,
      indent: screenWidth * 0.1,
      endIndent: screenWidth * 0.1,
    );
    return Scaffold(
      backgroundColor: darkBlueColor,
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RoutesCoveredScreen.id);
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
          'Workshop Expense',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.05),
            Text(
              'Services Done',
              style: TextStyle(color: lightOrangeColor, fontSize: 25),
            ),
            SizedBox(height: screenHeight * 0.02),
            GestureDetector(
              onTap: () {},
              child: CustomIconsTextWidget(
                screenWidth: screenWidth,
                title: 'Oil Change',
              ),
            ),
            SizedBox(height: screenHeight * 0.012),
            divider,
            GestureDetector(
              onTap: () {},
              child: CustomIconsTextWidget(
                screenWidth: screenWidth,
                title: 'Painting',
              ),
            ),
            SizedBox(height: screenHeight * 0.012),
            divider,
            GestureDetector(
              onTap: () {},
              child: CustomIconsTextWidget(
                screenWidth: screenWidth,
                title: 'Air Check',
              ),
            ),
            SizedBox(height: screenHeight * 0.012),
            divider,
            GestureDetector(
              onTap: () {},
              child: CustomIconsTextWidget(
                screenWidth: screenWidth,
                title: 'Tyre Replacement',
              ),
            ),
            SizedBox(height: screenHeight * 0.012),
            divider,
            GestureDetector(
              onTap: () {},
              child: CustomIconsTextWidget(
                screenWidth: screenWidth,
                title: 'Purchasing Spares',
              ),
            ),
            SizedBox(height: screenHeight * 0.012),
            divider,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 25,
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
