import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';
import 'package:routes_app/Screens/toll_charges_screen.dart';

class ExpenseManagerScreen extends StatelessWidget {
  static final id = "/expense_manager_screen";
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final divider = Divider(
      indent: screenWidth * 0.1,
      endIndent: screenWidth * 0.1,
      thickness: 0.5,
      color: Colors.white,
    );
    return Scaffold(
      backgroundColor: darkBlueColor,
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, TollChargesScreen.id);
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
          'Expense Manager',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
            height: screenHeight * 0.15,
            color: darkBlueColor,
            child: Center(
                child: Text(
              'Expenses incurred',
              style: TextStyle(color: lightOrangeColor, fontSize: 25),
            )),
          ),
          Divider(
            thickness: 0.5,
            color: Colors.white,
          ),
          CustomTItleTrailingTile(
            screenWidth: screenWidth,
            title: 'Fuel Expenses',
          ),
          divider,
          CustomTItleTrailingTile(
            screenWidth: screenWidth,
            title: 'Food Expenses',
          ),
          divider,
          CustomTItleTrailingTile(
            screenWidth: screenWidth,
            title: 'Workshop',
          ),
          divider,
          CustomTItleTrailingTile(
            screenWidth: screenWidth,
            title: 'Toll Charges',
          ),
          divider,
          CustomTItleTrailingTile(
            screenWidth: screenWidth,
            title: 'Labour Charges',
          ),
          divider,
        ],
      )),
    );
  }
}

class CustomTItleTrailingTile extends StatelessWidget {
  final double screenWidth;
  final String title;
  const CustomTItleTrailingTile({
    Key key,
    @required this.screenWidth,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: lightOrangeColor, fontSize: 22),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
      trailing: Icon(
        Icons.play_arrow,
        color: Colors.white,
      ),
    );
  }
}
