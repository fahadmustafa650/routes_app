import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';

class CustomIconsTextWidget extends StatelessWidget {
  final title;
  const CustomIconsTextWidget(
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
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.black,
            size: 30,
          ),
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
