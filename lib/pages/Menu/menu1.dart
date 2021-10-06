import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spdy/pages/Widgets/button.dart';
import 'package:spdy/pages/Widgets/colors.dart';
import 'package:spdy/pages/Acc/acc1.dart';

class Menu_1 extends StatefulWidget {
  @override
  _Menu_1State createState() => _Menu_1State();
}

class _Menu_1State extends State<Menu_1> {

  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: backgroundColor(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Stack(
              children: [
                ListView(children: <Widget>[

                  Card(
            shape: RoundedRectangleBorder(
            side: BorderSide(color: buttonPressColor(),width: 2),
                borderRadius: BorderRadius.circular(4.0)),
                    child: ListTile(
                      title: Text("Current Order", style: TextStyle(color: buttonPressColor(), fontWeight: FontWeight.bold)),
                      subtitle: Text('Check an order that you are doing', style: TextStyle(color: buttonPressColor())),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: buttonPressColor(),width: 2),
                        borderRadius: BorderRadius.circular(4.0)),
                    child: ListTile(
                      title: Text('Past Order', style: TextStyle(color: buttonPressColor(),fontWeight: FontWeight.bold)),
                      subtitle: Text("Check previously order completed.", style: TextStyle(color: buttonPressColor())),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: buttonPressColor(),width: 2),
                        borderRadius: BorderRadius.circular(4.0)),
                    child: ListTile(
                      title: Text('Payment', style: TextStyle(color: buttonPressColor(),fontWeight: FontWeight.bold)),
                      subtitle: Text("Edit payment method.", style: TextStyle(color: buttonPressColor())),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: buttonPressColor(),width: 2),
                        borderRadius: BorderRadius.circular(4.0)),
                    child: ListTile(
                      title: Text('Account Settings', style: TextStyle(color: buttonPressColor(),fontWeight: FontWeight.bold)),
                      subtitle: Text("Edit your account information.", style: TextStyle(color: buttonPressColor())),
                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: buttonPressColor(),width: 2),
                        borderRadius: BorderRadius.circular(4.0)),
                    child: ListTile(
                      title: Text('App Settings', style: TextStyle(color: buttonPressColor(),fontWeight: FontWeight.bold)),
                      subtitle: Text("Edit your app configurations.", style: TextStyle(color: buttonPressColor())),
                    ),
                  ),
                ]),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.cancel,
                        color: Colors.white,
                        size: 50,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Close",
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
          )),
    );
  }
}
