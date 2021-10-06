import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spdy/pages/Widgets/colors.dart';

class App_1 extends StatefulWidget {
  @override
  _App_1State createState() => _App_1State();
}

class _App_1State extends State<App_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: backgroundColor(),
          child: Padding(
            padding: const EdgeInsets.only(top: 80, bottom: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35, bottom: 40),
                    child: Text(
                      "App Settings",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        fontWeight: FontWeight.bold
                          ),
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Notification",
                            style: TextStyle(
                                color: buttonPressColor(),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Make changes to your Notification Settings.",
                            style: TextStyle(
                              color: buttonPressColor(),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    height: 70,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Set Default Map",
                            style: TextStyle(
                                color: buttonPressColor(),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Default Map: SPDY",
                            style: TextStyle(
                              color: buttonPressColor(),
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    height: 70,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  SizedBox(
                    height: 390,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "Menu",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
