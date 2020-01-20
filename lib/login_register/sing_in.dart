import 'package:flutter/material.dart';

import 'widgets/sign_in_page.dart';
import 'widgets/sign_up_page.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 6,
                      child: Container(
                        alignment: Alignment.topLeft,
                        width: 100,
                        child: CircleAvatar(),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Container(
                          child: TabBar(
                        indicatorPadding: EdgeInsets.symmetric(horizontal: 10),
                        unselectedLabelColor: Colors.black,
                        labelColor: Colors.black,
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        labelPadding: EdgeInsets.symmetric(vertical: 10),
                        indicatorColor: Colors.black,
                        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
                        tabs: <Widget>[
                          Container(
                            child: Text("Sign in"),
                          ),
                          Container(child: Text("Sign up"))
                        ],
                      )),
                    ),
                  ],
                ),
              ),
              Expanded(
                              child: Container(
                  child: TabBarView(
                    children: <Widget>[
                      SignInPage(),
                      SingUpPage(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

