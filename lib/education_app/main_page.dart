import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EducationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 80,
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Home Page",style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),),
                        RichText(text: TextSpan(
                          children: [
                            TextSpan(text: "Choose your course",style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12
                            )),
                            TextSpan(text: " right away",style: TextStyle(
                              color: Colors.teal,
                              fontSize: 12
                            )),
                          ]
                        ),
                        )
                      ],
                    ),
                    Spacer(),
                    Badge(
                      child: Icon(Icons.notifications, color: Colors.teal,),
                      showBadge: true,
                      badgeContent: Text(""),

                    )
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
























