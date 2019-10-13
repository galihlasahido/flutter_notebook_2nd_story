import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_second_story/exchange_finder/models/curreny.dart';

class ExchangeFinder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EFMainPage(),
    );
  }
}

class EFMainPage extends StatefulWidget {
  @override
  _EFMainPageState createState() => _EFMainPageState();
}

class _EFMainPageState extends State<EFMainPage> {
  static const double appLeftPadding = 48.0;
  Color topViewColor = Color(0xffA28835);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            left: appLeftPadding,
            top: 0,
            child: Container(
              height: 130,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(color: topViewColor),
              padding: EdgeInsets.only(left: 8, top: 24, bottom: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      print("back button pressed");
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "100",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            )),
                        TextSpan(
                            text: ".00 USD",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                      ]),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 24,
            top: 16,
            child: IconButton(
              color: Colors.black,
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
          ),
          Positioned(
            top: 152,
            left: appLeftPadding,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Current location",
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_searching,
                      color: topViewColor,
                      size: 16,
                    ),
                    Text(
                      "Prague, Czech Republic",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.1),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            right: 0,
            bottom: 100,
            left: appLeftPadding,
            top: 230,
            child: Container(
              color: Colors.red[200],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 84,
            child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height / 1.7,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.only(left: appLeftPadding),
                      height: 82,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 48,
                            width: 48,
                            padding: EdgeInsets.all(4),
                            decoration:
                                BoxDecoration(color: Colors.white, boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  blurRadius: 3,
                                  spreadRadius: 2,
                                  offset: Offset(2, 2))
                            ]),
                            child: Image.network(
                              priceItems[index].img,
                              scale: 0.6,
                              width: 40,
                              height: 40,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 32),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("${priceItems[index].price}"),
                                Text(priceItems[index].countryCode),
                              ],
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 18),
                            child: VerticalDivider(
                              thickness: 2,
                            ),
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            icon: Icon(Icons.more_vert),
                            color: Colors.grey[200],
                            onPressed: () {},
                          )
                        ],
                      ),
                    );
                  },
                  itemCount: priceItems.length,
                )),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 140,
              width: 120,
              child: Placeholder(),
            ),
          ),
        ],
      ),
    );
  }
}
