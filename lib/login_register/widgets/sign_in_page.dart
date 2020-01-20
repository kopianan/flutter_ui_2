import 'package:challenge_myself_1/login_register/widgets/bottom_decoration.dart';
import 'package:challenge_myself_1/utils/colors_collection.dart';
import 'package:challenge_myself_1/utils/styles_collection.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({
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
                  "Hi, There\nWelcom To My World",
                  style: StylesCollection.signInSignUp,
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(hintText: "Email Address"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: "Password"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(MdiIcons.facebook),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(MdiIcons.google),
                      onPressed: () {},
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
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: ColorsCollection.blueLightColor),
              height: 60,
              width: 60,
            ),
          ),
        ],
      ),
    );
  }
}
