import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spdy/pages/Widgets/button.dart';
import 'package:spdy/pages/Widgets/colors.dart';
import 'package:spdy/pages/Acc/acc1.dart';

class Order_1 extends StatefulWidget {
  @override
  _Order_1State createState() => _Order_1State();
}

class _Order_1State extends State<Order_1> {


  bool _isChecked = false;
  bool _isChecked1 = false;
  bool _isChecked2 = false;
  bool _isChecked3 = false;
  bool _isChecked4 = false;
  String _currText = '';
  Color _checkColor = Colors.white;
  Color _activeColor = buttonPressBlueColor();

  Color cardColor = Colors.white;
  Color cardColor1 = Colors.white;
  Color cardColor2 = Colors.white;
  Color cardColor3 = Colors.white;
  Color cardColor4 = Colors.white;

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
                padding: const EdgeInsets.only(left: 30, top: 80, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("New Order", style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold)),
                    SizedBox(height: 30,),
                    Text("Check all that are applicable.", style: TextStyle(fontSize: 17, color: Colors.white, )),
                    SizedBox(height: 30,),

                    Column(
                        children: [
                          Card(
                            child: ListTile(
                              tileColor: cardColor,
                              leading: Transform.scale(
                                scale: 1.5,
                                child: Checkbox(

                                  checkColor: Colors.blue,
                                  fillColor: MaterialStateColor.resolveWith(
                                        (states) {
                                      if (states.contains(MaterialState.selected)) {
                                        return cardColor == Colors.white? buttonPressBlueColor() :Colors.white; // the color when checkbox is selected;
                                      }
                                      return cardColor == Colors.white? buttonPressBlueColor() :Colors.white; //the color when checkbox is unselected;
                                    },
                                  ),



                                  value: _isChecked,
                                  onChanged: (val) {
                                    setState(() {
                                      _isChecked = val!;
                                      if (val == true) {
                                        _currText = val.toString();
                                      }
                                      cardColor == Colors.white ?
                                          cardColor = buttonPressBlueColor():
                                          cardColor = Colors.white;

                                    });
                                  },
                                ),
                              ),
                              title: Text("Towing", style: TextStyle(fontSize: 18 ,color: cardColor == buttonPressBlueColor()? Colors.white : buttonPressBlueColor())),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              tileColor: cardColor1,
                              leading: Transform.scale(
                                scale: 1.5,
                                child: Checkbox(
                                  checkColor: Colors.blue,
                                  fillColor: MaterialStateColor.resolveWith(
                                        (states) {
                                      if (states.contains(MaterialState.selected)) {
                                        return cardColor1 == Colors.white? buttonPressBlueColor() :Colors.white; // the color when checkbox is selected;
                                      }
                                      return cardColor1 == Colors.white? buttonPressBlueColor() :Colors.white; //the color when checkbox is unselected;
                                    },
                                  ),



                                  value: _isChecked1,
                                  onChanged: (val) {
                                    setState(() {
                                      _isChecked1 = val!;
                                      if (val == true) {
                                        _currText = val.toString();
                                      }
                                      cardColor1 == Colors.white ?
                                      cardColor1 = buttonPressBlueColor():
                                      cardColor1 = Colors.white;

                                    });
                                  },
                                ),
                              ),
                              title: Text("Spare Tire Change", style: TextStyle(fontSize: 18 ,color: cardColor1 == buttonPressBlueColor()? Colors.white : buttonPressBlueColor())),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              tileColor: cardColor2,
                              leading: Transform.scale(
                                scale: 1.5,
                                child: Checkbox(
                                  checkColor: Colors.blue,
                                  fillColor: MaterialStateColor.resolveWith(
                                        (states) {
                                      if (states.contains(MaterialState.selected)) {
                                        return cardColor2 == Colors.white? buttonPressBlueColor() :Colors.white; // the color when checkbox is selected;
                                      }
                                      return cardColor2 == Colors.white? buttonPressBlueColor() :Colors.white; //the color when checkbox is unselected;
                                    },
                                  ),



                                  value: _isChecked2,
                                  onChanged: (val) {
                                    setState(() {
                                      _isChecked2 = val!;
                                      if (val == true) {
                                        _currText = val.toString();
                                      }
                                      cardColor2 == Colors.white ?
                                      cardColor2 = buttonPressBlueColor():
                                      cardColor2 = Colors.white;

                                    });
                                  },
                                ),
                              ),
                              title: Text("Jump Start", style: TextStyle(fontSize: 18 ,color: cardColor2 == buttonPressBlueColor()? Colors.white : buttonPressBlueColor())),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              tileColor: cardColor3,
                              leading: Transform.scale(
                                scale: 1.5,
                                child: Checkbox(
                                  checkColor: Colors.blue,
                                  fillColor: MaterialStateColor.resolveWith(
                                        (states) {
                                      if (states.contains(MaterialState.selected)) {
                                        return cardColor3 == Colors.white? buttonPressBlueColor() :Colors.white; // the color when checkbox is selected;
                                      }
                                      return cardColor3 == Colors.white? buttonPressBlueColor() :Colors.white; //the color when checkbox is unselected;
                                    },
                                  ),



                                  value: _isChecked3,
                                  onChanged: (val) {
                                    setState(() {
                                      _isChecked3 = val!;
                                      if (val == true) {
                                        _currText = val.toString();
                                      }
                                      cardColor3 == Colors.white ?
                                      cardColor3 = buttonPressBlueColor():
                                      cardColor3 = Colors.white;

                                    });
                                  },
                                ),
                              ),
                              title: Text("Out of Gas Delivery", style: TextStyle(fontSize: 18 ,color: cardColor3 == buttonPressBlueColor()? Colors.white : buttonPressBlueColor())),
                            ),
                          ),
                          Card(
                            child: ListTile(
                              tileColor: cardColor4,
                              leading: Transform.scale(
                                scale: 1.5,
                                child: Checkbox(
                                  checkColor: Colors.blue,
                                  fillColor: MaterialStateColor.resolveWith(
                                        (states) {
                                      if (states.contains(MaterialState.selected)) {
                                        return cardColor4 == Colors.white? buttonPressBlueColor() :Colors.white; // the color when checkbox is selected;
                                      }
                                      return cardColor4 == Colors.white? buttonPressBlueColor() :Colors.white; //the color when checkbox is unselected;
                                    },
                                  ),



                                  value: _isChecked4,
                                  onChanged: (val) {
                                    setState(() {
                                      _isChecked4 = val!;
                                      if (val == true) {
                                        _currText = val.toString();
                                      }
                                      cardColor4 == Colors.white ?
                                      cardColor4 = buttonPressBlueColor():
                                      cardColor4 = Colors.white;

                                    });
                                  },
                                ),
                              ),
                              title: Text("New Battery Install", style: TextStyle(fontSize: 18 ,color: cardColor4 == buttonPressBlueColor()? Colors.white : buttonPressBlueColor())),
                            ),
                          ),
                        ]
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
