import 'package:flutter/material.dart';

class SmartCalendarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
            top: true,
            right: true,
            left: true,
            child: Container(
              height: 64,
              child: Placeholder(),
            ),
          )
        ],


      ),
    ));
  }
}
