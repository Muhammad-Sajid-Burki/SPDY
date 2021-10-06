import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spdy/pages/Widgets/button.dart';
import 'package:spdy/pages/Widgets/colors.dart';
import 'package:spdy/pages/Acc/acc1.dart';

class Current_1 extends StatefulWidget {
  @override
  _Current_1State createState() => _Current_1State();
}

class _Current_1State extends State<Current_1> {

  bool selected = false;

  double containerHeight = 0;

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
                child: Stack(
                  children: [
                    Text("Current Orders", style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        height: 300,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Colors.white
                        ),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("Order #123-ABC", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
                                SizedBox(height: 10,),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("ABC Towning", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                                SizedBox(height: 10,),
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text("Request: Light Towing, New Battery Install", style: TextStyle(fontSize: 15,))),
                                SizedBox(height: 15,),

                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Someone will see you in:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,letterSpacing: 1),),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(3),
                                          color: orangeColor(),

                                        ),
                                        height: 30,
                                          width: 90,
                                          child:Center(child: Text("15:55", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),)))
                                    ],
                                  ),
                                ),
                                SizedBox(height: 30,),
                                GestureDetector(
                                  onTap: () {

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50.0),
                                          color: Colors.white,
                                          border: Border.all(color: greenColor(), width: 2)
                                      ),
                                      child: Center(
                                          child: Text(
                                            "Contact Provider",
                                            style: TextStyle(
                                                color: greenColor(),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          )),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                GestureDetector(
                                  onTap: () {

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50.0),
                                          color: buttonPressPurpleColor(),
                                      ),
                                      child: Center(
                                          child: Text(
                                            "Show Map",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15),
                                          )),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            Positioned(
                                top: 0,
                                right: 0,
                                child: Icon(Icons.more_vert)),

                          ],
                        ),),),

                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  selected = !selected;
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(

                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            color: Colors.white,
                            child: Center(child: Text("Contact Support", style: TextStyle(color: buttonPressColor(), fontWeight: FontWeight.bold, fontSize: 20),)),
                          )
                        ],
                      ),
                    ),
                  );
                },

                child:
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
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
                )


              ),


            ],
          )),
    );
  }
  bottomMenu() {
    return Positioned(
      bottom: 0,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            color: Colors.white,
            child: Center(child: Text("Contact Support", style: TextStyle(color: buttonPressColor(), fontWeight: FontWeight.bold, fontSize: 20),)),
          )
        ],
      ),
    );
  }
}