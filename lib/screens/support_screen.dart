import 'package:flutter/material.dart';
import 'package:routes_app/Constants/constants.dart';
import 'package:routes_app/models/message_model.dart';

const mySideChatBubbleColor = Colors.blue;

class SupportScreen extends StatefulWidget {
  static final id = '/support_screen';
  @override
  _SupportScreenState createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  bool isMee = true;

  @override
  Widget build(BuildContext context) {
    int prevUserId;
    return Scaffold(
      backgroundColor: darkBlueColor,
      appBar: AppBar(
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
          'Support',
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            'Monday, 10:35 am',
            style: textStyle,
          ),
          Expanded(
            child: ListView.builder(
              reverse: true,
              padding: EdgeInsets.all(20),
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                final Message message = messages[index];
                //final bool isMe = message.sender.id == currentUser.id;
                final bool isSameUser = prevUserId == message.sender.id;
                prevUserId = message.sender.id;
                // return _chatBubble(message, isMe, isSameUser);
                isMee = isMee == true ? false : true;
                return _chatBubble(message, isMee, isSameUser);
              },
            ),
          ),
          _sendMessageArea(),
        ],
      ),
    );
  }

  _chatBubble(Message message, bool isMe, bool isSameUser) {
    if (isMe) {
      //Mine Side Chat
      return myChatBubble(message);
    } else {
      //Other Side chat
      return otherSideChatBubble(message);
    }
  }

  Column myChatBubble(Message message) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                backgroundImage: AssetImage('assets/images/profile_pic.jpeg'),
                //radius: ,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.75,
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: mySideChatBubbleColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        message.text,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Column otherSideChatBubble(Message message) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          child: Row(
            children: [
              Container(
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.75,
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        message.text,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                backgroundImage: AssetImage('assets/images/profile_pic1.jpeg'),
                //radius: ,
              ),
            ],
          ),
        ),
      ],
    );
  }

  _sendMessageArea() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(
        children: <Widget>[
          // IconButton(
          //   icon: Icon(Icons.photo),
          //   iconSize: 25,
          //   color: Theme.of(context).primaryColor,
          //   onPressed: () {},
          // ),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: 'Say Something...',
                  hintStyle: TextStyle(color: Colors.black),
                  border: InputBorder.none),
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          IconButton(
            icon: Icon(Icons.arrow_forward_sharp),
            iconSize: 25,
            color: Colors.blue,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
