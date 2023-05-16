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
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        // ),
        body: Container(
          color: Colors.blue,
          height: 400,
          width: 500,
          child: Stack(children: [
            Positioned(
              top: 80,
              left: 20,
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 50,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
