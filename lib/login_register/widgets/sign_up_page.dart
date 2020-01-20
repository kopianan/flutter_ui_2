import 'package:challenge_myself_1/login_register/widgets/bottom_decoration.dart';
import 'package:challenge_myself_1/utils/colors_collection.dart';
import 'package:challenge_myself_1/utils/styles_collection.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Txt(
                  "Hello, There",
                  style: StylesCollection.signInSignUp,
                ),
                Txt(
                  "Enter your information bellow\nor login with social media account",
                  style: StylesCollection.smallSignInSignUp,
                ),

                 Column(
                  children: <Widget>[
                     TextFormField(
                      decoration: InputDecoration(hintText: "Full Name"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Email Address"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Password"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Confirm Password"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          BottomDecoration.bottomLine,
          Positioned(
            bottom: 50,
            right: 50,
            child: Container(
              child: Icon(Icons.arrow_forward, size: 30, color: Colors.white),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: ColorsCollection.pinkLightColor),
              height: 60,
              width: 60,
            ),
          ),
        ],
      ),
    );
  }
}
