import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spdy/pages/Widgets/button.dart';
import 'package:spdy/pages/Widgets/colors.dart';
import 'package:spdy/pages/Acc/acc1.dart';

class Order_4 extends StatefulWidget {
  @override
  _Order_4State createState() => _Order_4State();
}

class _Order_4State extends State<Order_4> {

  Color cardColor = Colors.white;
  Color cardColor1 = Colors.white;
  Color cardColor2 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: backgroundColor(),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 60, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Choose Towing Service", style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          cardColor == Colors.white ?
                          cardColor = buttonPressBlueColor():
                          cardColor = Colors.white;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        height: 120,
                        decoration: BoxDecoration(
                          color: cardColor,
                            borderRadius: BorderRadius.circular(5),

                            border: Border.all(color: buttonPressBlueColor())
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Wheel Lift", style: TextStyle(color: cardColor == buttonPressBlueColor()? Colors.white : buttonPressBlueColor(),fontWeight: FontWeight.bold, fontSize: 20),),
                                Text("\$XX.XX", style: TextStyle(color: cardColor == buttonPressBlueColor()? Colors.white : buttonPressBlueColor(),fontWeight: FontWeight.bold, fontSize: 20),)
                              ],
                            ),
                            Text("Hydraulic boom with cross bars at the end, which slipped under the front or rear wheels of a car. Vehicle is lifted and keeps two wheels on the ground.", style: TextStyle(color: cardColor == buttonPressBlueColor()? Colors.white : buttonPressBlueColor(), fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          cardColor1 == Colors.white ?
                          cardColor1 = buttonPressBlueColor():
                          cardColor1 = Colors.white;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        height: 120,
                        decoration: BoxDecoration(
                            color: cardColor1,
                            border: Border.all(color: buttonPressBlueColor()),
                            borderRadius: BorderRadius.circular(5)

                      ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Hook & Chain", style: TextStyle(color: cardColor1 == buttonPressBlueColor()? Colors.white : buttonPressBlueColor(),fontWeight: FontWeight.bold, fontSize: 20),),
                                Text("\$XX.XX", style: TextStyle(color: cardColor1 == buttonPressBlueColor()? Colors.white : buttonPressBlueColor(),fontWeight: FontWeight.bold, fontSize: 20),)
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: orangeColor(),

                                  borderRadius: BorderRadius.circular(2)
                              ),
                              child: Text("2WD Only", style: TextStyle(color: Colors.black, fontSize: 11),),
                            ),
                            Text("Recommended for highly damaged car in accident or pulling stuck vehicles.", style: TextStyle(color: cardColor1 == buttonPressBlueColor()? Colors.white : buttonPressBlueColor(), fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          cardColor2 == Colors.white ?
                          cardColor2 = buttonPressBlueColor():
                          cardColor2 = Colors.white;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(15),
                        height: 120,
                        decoration: BoxDecoration(
                            color: cardColor2,
                            border: Border.all(color: buttonPressBlueColor()),
                            borderRadius: BorderRadius.circular(5)

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Flatbed", style: TextStyle(color: cardColor2 == buttonPressBlueColor()? Colors.white : buttonPressBlueColor(),fontWeight: FontWeight.bold, fontSize: 20),),
                                Text("\$XX.XX", style: TextStyle(color: cardColor2 == buttonPressBlueColor()? Colors.white : buttonPressBlueColor(),fontWeight: FontWeight.bold, fontSize: 20),)
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: orangeColor(),

                                  borderRadius: BorderRadius.circular(2)
                              ),
                              child: Text("Light Towing Only", style: TextStyle(color: Colors.black, fontSize: 11),),
                            ),
                            Text("Entire vehicle lifted to the back of a truck. Great for high value cars.", style: TextStyle(color: cardColor2 == buttonPressBlueColor()? Colors.white : buttonPressBlueColor(), fontSize: 12)),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),




              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,

                          children: [
                            Icon(Icons.navigate_before, color: Colors.white, size: 60,),
                            Text('Back', style: TextStyle(color: Colors.white, fontSize: 20),),

                          ],
                        ),
                        onPressed: () {
                          // _controller.previousPage(
                          //     duration: _kDuration, curve: _kCurve);
                        },
                      ),
                      Text("Step 1 of 4", style: TextStyle(fontSize: 15, color: Colors.white),),
                      FlatButton(
                        child: Row(
                          children: [
                            Text('Next', style: TextStyle(color: Colors.white, fontSize: 20),),
                            Icon(Icons.navigate_next, color: Colors.white, size: 60,),

                          ],
                        ),
                        onPressed: () {
                          // _controller.nextPage(duration: _kDuration, curve: _kCurve);
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
