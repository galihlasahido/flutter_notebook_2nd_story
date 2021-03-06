import 'package:flutter/material.dart';

class HealthyRecipes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecipesPage(),
    );
  }
}

class RecipesPage extends StatefulWidget {
  @override
  _StateRecipesPage createState() => _StateRecipesPage();
}

class _StateRecipesPage extends State<RecipesPage> {
  List<String> timeTable = [
    "12:00",
    "13:00",
    "14:00",
    "15:00",
    "16:00",
    "17:00",
    "18:00",
    "19:00",
    "20:00",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[300],
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 24,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 32, left: 24, right: 24),
              height: MediaQuery.of(context).size.height / 3,
              child: Column(
                children: <Widget>[
                  Text(
                    "Vitamins & Minerals",
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "How Much Should You Take?",
                    style: TextStyle(
                        color: Colors.green[200],
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 9,
//                    decoration: BoxDecoration(color: Colors.blue),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "80",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 42),
                              ),
                              Text(
                                "Vitamin C",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 12),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: VerticalDivider(
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "16",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 42),
                              ),
                              Text(
                                "Vitamin B3",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: VerticalDivider(
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "90",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 42),
                              ),
                              Text(
                                "Vitamin D",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            left: 32,
            right: 32,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.9,
            left: 16,
            right: 16,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2.8,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24))),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Container(
                        height: 4,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(4)),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(left: 24, right: 24, top: 4),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey[300], width: 1),
                          borderRadius: BorderRadius.circular(36)),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                "Minerals",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.lightGreen,
                                    borderRadius: BorderRadius.circular(36),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.green[100],
                                          blurRadius: 5,
                                          spreadRadius: 3)
                                    ]),
                                child: Center(
                                  child: Text(
                                    "Nutrition",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )),
                          Expanded(
                            flex: 1,
                            child: Center(
                              child: Text(
                                "Vitamins",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Schudule",
                            style: TextStyle(
                                color: Colors.purple[900],
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Spacer(),
                          Text(
                            "Today,",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "11 Oct",
                            style: TextStyle(color: Colors.purple[900]),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 48),
                            child: Text(
                              timeTable[index],
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        },
                        itemCount: timeTable.length,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          top: 8,
                          child: ListView.separated(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  width: 80,
                                );
                              },
                              separatorBuilder: (context, index) {
                                return VerticalDivider(
                                  width: 2,
                                  thickness: 1,
                                );
                              },
                              itemCount: 8),
                        ),
                        Positioned(
                            left: 0,
                            right: 0,
                            top: 0,
                            bottom: 0,
                            child: ListView.builder(
                                itemCount: 4,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return index % 2 == 0
                                      ? Container(
                                          height: 60,
                                        )
                                      : Container(
                                          height: 60,
                                          decoration: BoxDecoration(
                                              color: Colors.blueGrey[50]),
                                        );
                                })),
                        Positioned(
                          left: 40,
                          top: 24,
                          child: Container(
                            height: 42,
                            width: 140,
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.red[100].withOpacity(0.6),
                                borderRadius: BorderRadius.circular(24)),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Image.network(
                                      "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/225/tomato_1f345.png"),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    "Tomato",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        letterSpacing: 1.2),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width / 2,
                          top: 92,
                          child: Container(
                            height: 42,
                            width: 140,
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 4),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple[100].withOpacity(0.6),
                                borderRadius: BorderRadius.circular(24)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Image.network(
                                    "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/225/aubergine_1f346.png",
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    "Eggplant",
                                    style: TextStyle(
                                        color: Colors.deepPurple,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        letterSpacing: 1.2),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width / 4,
                          top: 152,
                          child: Container(
                            height: 42,
                            width: 140,
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 4),
                            decoration: BoxDecoration(
                                color: Colors.green[100].withOpacity(0.6),
                                borderRadius: BorderRadius.circular(24)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Image.network(
                                    "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/225/avocado_1f951.png",
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    "Avocado",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        letterSpacing: 1.2),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: MediaQuery.of(context).size.width / 2.5,
                          top: 214,
                          child: Container(
                            height: 42,
                            width: 110,
                            padding: EdgeInsets.symmetric(
                                vertical: 4, horizontal: 4),
                            decoration: BoxDecoration(
                                color: Colors.yellow[100].withOpacity(0.6),
                                borderRadius: BorderRadius.circular(24)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Image.network(
                                    "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/225/ear-of-maize_1f33d.png",
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    "Corn",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        letterSpacing: 1.2),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: MediaQuery.of(context).size.width / 2.8,
                          child: Container(
                            height: 12,
                            width: 12,
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.greenAccent, width: 3),
                                  shape: BoxShape.circle),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 12,
                          left: MediaQuery.of(context).size.width / 2.7,
                          bottom: 0,
                          child: Container(
                            width: 1.5,
                            child: Container(
                              decoration:
                                  BoxDecoration(color: Colors.greenAccent),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
