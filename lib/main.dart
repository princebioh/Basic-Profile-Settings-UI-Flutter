import 'package:flutter/material.dart';
import 'widgets/external_buttons.dart';

void main(List<String> args) {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(
          children: [
            SizedBox(
              height: 420,
              width: 500,
              child: Stack(children: const [
                Positioned(
                  top: 60,
                  left: 20,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                Positioned(
                  top: 60,
                  left: 350,
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
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
            SizedBox(
              height: 512,
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    width: 350,
                    height: 70,
                    alignment: Alignment.center,
                    child: const Text(
                      "Upgrade to Premium",
                      style: TextStyle(
                        fontSize: 23,
                        fontFamily: "Verdana",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ExternalButtons(
                    leadingIcon: Icons.shopping_bag_outlined,
                    textButton: "Your Order History",
                    lastIcon: Icons.arrow_forward,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ExternalButtons(
                    leadingIcon: Icons.help_outline_rounded,
                    textButton: "Help and Support",
                    lastIcon: Icons.arrow_forward,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ExternalButtons(
                    leadingIcon: Icons.card_giftcard_outlined,
                    textButton: "Load Gift Voucher",
                    lastIcon: Icons.arrow_forward,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const ExternalButtons(
                    leadingIcon: Icons.logout_outlined,
                    textButton: "Logout",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
