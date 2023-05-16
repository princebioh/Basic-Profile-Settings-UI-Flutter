import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[500],
        body: Column(
          children: [
            Container(
              color: Colors.blue,
              height: 420,
              width: 500,
              child: Stack(children: const [
                Positioned(
                  top: 60,
                  left: 20,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 350,
                  child: Icon(
                    Icons.settings,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                Positioned(
                    top: 90,
                    left: 95,
                    child: CircleAvatar(
                      radius: 120,
                      backgroundImage:
                          AssetImage("assets/images/UserProfile.jpg"),
                    )),
                Positioned(
                    top: 340,
                    left: 110,
                    child: Text(
                      "Prince Bioh",
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: "Verdana",
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                Positioned(
                    top: 390,
                    left: 130,
                    child: Text(
                      "princebioh15@gmail.com",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: "Calibri",
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    )),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
