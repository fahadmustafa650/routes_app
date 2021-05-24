import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';
import 'package:routes_app/Screens/routes_today_screen.dart';

const blockIcon = Icon(
  Icons.block,
  color: Colors.white,
  size: 30,
);

class UpdateProfileScreen extends StatelessWidget {
  static final id = "/update_profile_screen";
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final divier = Divider(
      color: Colors.white,
      thickness: 1,
      indent: screenWidth * 0.08,
      endIndent: screenWidth * 0.08,
    );
    return Scaffold(
      backgroundColor: darkBlueColor,
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RoutesTodayScreen.id);
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
          'Update Profile',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: screenWidth * 1,
        child: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(height: 15),
            Text(
              'Change Photo',
              style: TextStyle(
                color: lightOrangeColor,
                fontSize: 23,
              ),
            ),
            SizedBox(height: 15),
            CircleAvatar(
              radius: 60,
              backgroundColor: lightOrangeColor,
              child: CircleAvatar(
                backgroundColor: darkBlueColor,
                radius: 59,
                child: Image(
                    color: lightOrangeColor,
                    width: 35,
                    height: 35,
                    image: AssetImage('assets/images/camera_plus_icon.png')),
              ),
            ),
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Driver Name',
                        style: TextStyle(
                            color: lightOrangeColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Simon Davis',
                        style: TextStyle(
                          color: lightOrangeColor,
                          fontSize: 25,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Lisence Number : ED25244',
                        style: TextStyle(
                            color: lightOrangeColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  blockIcon
                ],
              ),
            ),
            divier,
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              title: Text(
                'Age',
                style: TextStyle(
                    color: lightOrangeColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '41, 20 AUG 1980',
                style: TextStyle(
                  color: lightOrangeColor,
                  fontSize: 23,
                  // fontWeight: FontWeight.bold
                ),
              ),
              trailing: blockIcon,
            ),
            divier,
            ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              title: Text(
                'Mobile Number',
                style: TextStyle(
                    color: lightOrangeColor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                '+91 12345 67890',
                style: TextStyle(
                  color: lightOrangeColor,
                  fontSize: 23,
                  // fontWeight: FontWeight.bold
                ),
              ),
              trailing: blockIcon,
            ),
            divier,
            Container(
              margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email Address',
                    style: TextStyle(
                        color: lightOrangeColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: null,
                    decoration: InputDecoration(
                        labelText: 'david@routesnext.com',
                        labelStyle:
                            TextStyle(color: lightOrangeColor, fontSize: 20),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 2.0),
                        ),
                        suffixIcon: Icon(
                          Icons.edit_outlined,
                          color: Colors.white,
                        )),
                  ),
                  Container(
                    //color: Colors.white,
                    width: screenWidth * 0.8,
                    margin: EdgeInsets.only(top: 10, bottom: 20),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'Update',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
