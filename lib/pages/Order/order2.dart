import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spdy/pages/Widgets/button.dart';
import 'package:spdy/pages/Widgets/colors.dart';
import 'package:spdy/pages/Acc/acc1.dart';

class Order_2 extends StatefulWidget {
  @override
  _Order_2State createState() => _Order_2State();
}

class _Order_2State extends State<Order_2> {

  String? _chosenValue;

  int val=-1;

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
                padding: const EdgeInsets.only(left: 30, top: 50, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Car Information", style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20,),
                    Text("Car Maker", style: TextStyle(fontSize: 17, color: Colors.white, )),
                    SizedBox(height: 1,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                      child: DropdownButton<String>(
                        iconEnabledColor: Colors.black,
                        dropdownColor: Colors.white,
                        isExpanded: true,
                        underline:SizedBox(),
                        value: _chosenValue,
                        //elevation: 5,
                        style: TextStyle(color: Colors.black),

                        items: <String>[
                          'Android',
                          'IOS',
                          'Flutter',
                          'Node',
                          'Java',
                          'Python',
                          'PHP',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        hint: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Select One",
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _chosenValue = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("Car Model", style: TextStyle(fontSize: 17, color: Colors.white, )),
                    SizedBox(height: 1,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                      child: DropdownButton<String>(
                        iconEnabledColor: Colors.black,
                        dropdownColor: Colors.white,
                        isExpanded: true,
                        underline:SizedBox(),
                        value: _chosenValue,
                        //elevation: 5,
                        style: TextStyle(color: Colors.black),

                        items: <String>[
                          'Android',
                          'IOS',
                          'Flutter',
                          'Node',
                          'Java',
                          'Python',
                          'PHP',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        hint: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Select One",
                            style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            _chosenValue = value;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text("Car year", style: TextStyle(fontSize: 17, color: Colors.white, )),
                    SizedBox(height: 1,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextField(
                          decoration: InputDecoration(hintText: "1900",hintStyle: TextStyle(color: Colors.grey[500]), border:InputBorder.none,
                          ),
                        ),
                      )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                         Row(

                           children: [
                             Radio(
                               value: 1,
                               groupValue: val,
                               onChanged: (int? value) {
                                 setState(() {
                                   val = value!;
                                   //print(widget.val);
                                 });

                               },
                               activeColor: Colors.white,
                               hoverColor: Colors.white,
                             ),
                             Text("4WD", style: TextStyle(color: Colors.white, fontSize: 18),),

                           ],
                         ),


                      Row(
                        children: [
                          Radio(
                            value: 2,
                            groupValue: val,
                            onChanged: (int? value) {
                              setState(() {
                                val = value!;
//                  print(widget.val);
                              });
                            },
                            activeColor: Colors.white,
                          ),
                          Text("2WD", style: TextStyle(color: Colors.white, fontSize: 18),),

                        ],
                      ),


                    ],),
                    SizedBox(height: 5,),
                    Text("Choose Tow Weight", style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10,),

                    GestureDetector(
                      onTap: () {
                        setState(() {
                          cardColor == Colors.white ?
                          cardColor = buttonPressBlueColor():
                          cardColor = Colors.white;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 80,
                        decoration: BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.circular(5),

                            border: Border.all(color: buttonPressBlueColor())
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Light Weight", style: TextStyle(color: cardColor == buttonPressBlueColor()? Colors.white : buttonPressBlueColor(),fontWeight: FontWeight.bold, fontSize: 20),),
                            Text("Sedans, SUVs, Vans, Pick-Up Trucks, Mini-Vans, Motocycles, small trailers.", style: TextStyle(color: cardColor == buttonPressBlueColor()? Colors.white : buttonPressBlueColor(), fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          cardColor1 == Colors.white ?
                          cardColor1 = buttonPressBlueColor():
                          cardColor1 = Colors.white;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 80,
                        decoration: BoxDecoration(
                            color: cardColor1,
                            borderRadius: BorderRadius.circular(5),

                            border: Border.all(color: buttonPressBlueColor())
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Medium Weight", style: TextStyle(color: cardColor1 == buttonPressBlueColor()? Colors.white : buttonPressBlueColor(),fontWeight: FontWeight.bold, fontSize: 20),),
                            Text("Food trucks, Class C Motor Homes, 1-Ton Vehicles, Buses, Shuttles, Utility trucks, Large Ball Hitch Trailers.", style: TextStyle(color: cardColor1 == buttonPressBlueColor()? Colors.white : buttonPressBlueColor(), fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          cardColor2 == Colors.white ?
                          cardColor2 = buttonPressBlueColor():
                          cardColor2 = Colors.white;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 80,
                        decoration: BoxDecoration(
                            color: cardColor2,
                            borderRadius: BorderRadius.circular(5),

                            border: Border.all(color: buttonPressBlueColor())
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Heavy Duty", style: TextStyle(color: cardColor2 == buttonPressBlueColor()? Colors.white : buttonPressBlueColor(),fontWeight: FontWeight.bold, fontSize: 20),),
                            Text("Cement trucks, Cranes, Heavy Equipment transport, Semi, Tractor trailers, Tankers, 5th Wheel trailers.", style: TextStyle(color: cardColor2 == buttonPressBlueColor()? Colors.white : buttonPressBlueColor(), fontSize: 12)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),




              Padding(
                padding: const EdgeInsets.only(bottom: 15),
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
