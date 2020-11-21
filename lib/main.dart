import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    debugPrint("başladı");
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 15),
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(color: Colors.red),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Icon(
                          Icons.chevron_left,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "PIZZAS",
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      Container(
                        child: Icon(
                          Icons.menu,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  margin: EdgeInsets.only(top: 100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: Colors.white.withOpacity(0.9),
                    boxShadow: [
                      BoxShadow(blurRadius: 2.0, color: Colors.white)
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        child: Image(
                            image: AssetImage("images/pizza_yatay.jpg"),
                            fit: BoxFit.cover),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "ITALIANO PIZZA",
                        style: TextStyle(fontSize: 22),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.chevron_left, size: 35),
                          Icon(Icons.chevron_right, size: 35),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add, size: 35),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              child: Text(
                                "2",
                                style: TextStyle(fontSize: 22),
                              ),
                            ),
                            Icon(Icons.add, size: 35),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1),
              child: Text(
                "Selected Sized",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Icon(
                        Icons.account_circle_rounded,
                        color: Colors.grey,
                        size: 90,
                      ),
                      Text(
                        "small",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "-6,90",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    children: [
                      Icon(
                        Icons.android,
                        color: Colors.white,
                        size: 90,
                      ),
                      Text(
                        "medim",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "_____",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Icon(
                        Icons.account_box_outlined,
                        color: Colors.grey,
                        size: 90,
                      ),
                      Text(
                        "large",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "+6,90",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(blurRadius: 2.0, color: Colors.white)
                      ],
                    ),
                    margin: EdgeInsets.all(3),
                    child: Image.asset("images/pizza3.jpg"),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(blurRadius: 2.0, color: Colors.white)
                      ],
                    ),
                    margin: EdgeInsets.all(3),
                    child: Image.asset("images/pizza2.jpg"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
