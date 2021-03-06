import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SchoolApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      theme: ThemeData(accentColor: Colors.blueGrey[50]),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget _buildTopUI() {
    return Container(
      height: MediaQuery.of(context).size.height / 1.9,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2019/06/07/13/11/landscape-4258253_960_720.jpg"),
                      fit: BoxFit.cover),
                  color: Colors.red[100]),
              height: MediaQuery.of(context).size.height / 5,
            ),
          ),
          Positioned(
            left: 8,
            top: 48,
            right: 38,
            child: Container(
              height: 64,
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      print("Back Button Clicked");
                    },
                  ),
                  Spacer(),
                  Text(
                    "School Events",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  Spacer()
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 6.5,
            bottom: 0,
            left: 16,
            right: 16,
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              child: Container(
                padding:
                    EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 8),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.red[400], width: 2)),
                      child: Center(
                        child: Icon(
                          Icons.school,
                          size: 38,
                          color: Colors.green,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "St. Dreamwalker School",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo[300]),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.red[200],
                        ),
                        Text(
                          "576 Sebastin arcade, NY, 123456",
                          style: TextStyle(
                              color: Colors.indigo[300],
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          color: Colors.red[200],
                        ),
                        Text(
                          "123-4567-8901",
                          style: TextStyle(
                              color: Colors.indigo[300],
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          fit: FlexFit.loose,
                          flex: 1,
                          child: Container(
                            height: 48,
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(16)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "380",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Followers",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.loose,
                          flex: 1,
                          child: Container(
                            height: 48,
                            margin: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.green[400],
                                borderRadius: BorderRadius.circular(16)),
                            child: Center(
                              child: Text(
                                "Follow",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.2),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSchoolListUI() {
    return Container(
      padding: EdgeInsets.only(top: 16),
      height: MediaQuery.of(context).size.height / 2,
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: _buildListItems(context),
      ),
    );
  }

  List<Widget> _buildListItems(BuildContext context) {
    return [
      Container(
        padding: EdgeInsets.only(left: 16, right: 8),
        margin: EdgeInsets.only(left: 24, right: 24, bottom: 16),
        height: MediaQuery.of(context).size.height / 2.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red[200], width: 2),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.school,
                        color: Colors.green[200],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Dreamwalker Flutter School",
                        style: TextStyle(
                            color: Colors.indigo[400],
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "1 hours ago",
                        style:
                            TextStyle(color: Colors.indigo[400], fontSize: 10),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_vert, size: 34),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2014/03/12/18/45/boys-286245__340.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.indigo[300],
                      letterSpacing: 1.2),
                ),
              ),
            )
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 16, right: 8),
        margin: EdgeInsets.only(left: 24, right: 24, bottom: 16),
        height: MediaQuery.of(context).size.height / 2.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red[200], width: 2),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.school,
                        color: Colors.green[200],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Dreamwalker Flutter School",
                        style: TextStyle(
                            color: Colors.indigo[400],
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "1 hours ago",
                        style:
                            TextStyle(color: Colors.indigo[400], fontSize: 10),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_vert, size: 34),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2014/03/12/18/45/boys-286245__340.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.indigo[300],
                      letterSpacing: 1.2),
                ),
              ),
            )
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 16, right: 8),
        margin: EdgeInsets.only(left: 24, right: 24, bottom: 16),
        height: MediaQuery.of(context).size.height / 2.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red[200], width: 2),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.school,
                        color: Colors.green[200],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Dreamwalker Flutter School",
                        style: TextStyle(
                            color: Colors.indigo[400],
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "1 hours ago",
                        style:
                            TextStyle(color: Colors.indigo[400], fontSize: 10),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_vert, size: 34),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2014/03/12/18/45/boys-286245__340.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.indigo[300],
                      letterSpacing: 1.2),
                ),
              ),
            )
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 16, right: 8),
        margin: EdgeInsets.only(left: 24, right: 24, bottom: 16),
        height: MediaQuery.of(context).size.height / 2.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red[200], width: 2),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.school,
                        color: Colors.green[200],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Dreamwalker Flutter School",
                        style: TextStyle(
                            color: Colors.indigo[400],
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "1 hours ago",
                        style:
                            TextStyle(color: Colors.indigo[400], fontSize: 10),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_vert, size: 34),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2014/03/12/18/45/boys-286245__340.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.indigo[300],
                      letterSpacing: 1.2),
                ),
              ),
            )
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 16, right: 8),
        margin: EdgeInsets.only(left: 24, right: 24, bottom: 16),
        height: MediaQuery.of(context).size.height / 2.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red[200], width: 2),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.school,
                        color: Colors.green[200],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Dreamwalker Flutter School",
                        style: TextStyle(
                            color: Colors.indigo[400],
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "1 hours ago",
                        style:
                            TextStyle(color: Colors.indigo[400], fontSize: 10),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_vert, size: 34),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2014/03/12/18/45/boys-286245__340.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.indigo[300],
                      letterSpacing: 1.2),
                ),
              ),
            )
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 16, right: 8),
        margin: EdgeInsets.only(left: 24, right: 24, bottom: 16),
        height: MediaQuery.of(context).size.height / 2.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red[200], width: 2),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.school,
                        color: Colors.green[200],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Dreamwalker Flutter School",
                        style: TextStyle(
                            color: Colors.indigo[400],
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "1 hours ago",
                        style:
                            TextStyle(color: Colors.indigo[400], fontSize: 10),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_vert, size: 34),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2014/03/12/18/45/boys-286245__340.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.indigo[300],
                      letterSpacing: 1.2),
                ),
              ),
            )
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.only(left: 16, right: 8),
        margin: EdgeInsets.only(left: 24, right: 24, bottom: 16),
        height: MediaQuery.of(context).size.height / 2.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.red[200], width: 2),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.school,
                        color: Colors.green[200],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Dreamwalker Flutter School",
                        style: TextStyle(
                            color: Colors.indigo[400],
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "1 hours ago",
                        style:
                            TextStyle(color: Colors.indigo[400], fontSize: 10),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.more_vert, size: 34),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2014/03/12/18/45/boys-286245__340.jpg"),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.indigo[300],
                      letterSpacing: 1.2),
                ),
              ),
            )
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildTopUI(),
            _buildSchoolListUI(),
          ],
        ),
      ),
    );
  }
}
