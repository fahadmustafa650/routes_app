import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';
import 'package:routes_app/widgets/text_icons_widget.dart';
import 'food_expense_screen.dart';
import 'workshop_expense_screen.dart';

class TollChargesScreen extends StatefulWidget {
  static final id = "/toll_charges_expense_screen";
  @override
  _TollChargesScreenState createState() => _TollChargesScreenState();
}

class _TollChargesScreenState extends State<TollChargesScreen> {
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
                Navigator.pushNamed(context, FoodExpenseScreen.id);
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
          'Toll Charges',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.1),
          TextIconWidget(
            screenWidth: screenWidth,
            title: 'Select Toll Booth',
            iconData: Icons.arrow_drop_down,
          ),
          SizedBox(height: screenHeight * 0.02),
          GestureDetector(
            onTap: () {},
            child: CustomIconsTextWidget(
              screenWidth: screenWidth,
              title: 'Upload Receipt',
            ),
          ),
          SizedBox(height: screenHeight * 0.012),
          Divider(
            color: Colors.white,
            thickness: 0.5,
          )
        ],
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
