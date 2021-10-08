import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spdy/pages/Widgets/colors.dart';

class Pay_2 extends StatefulWidget {

  @override
  _Pay_2State createState() => _Pay_2State();
}

class _Pay_2State extends State<Pay_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: backgroundColor(),
          child:
          Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80, right: 35, left: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Account Settings", style: TextStyle(fontSize: 24, color: Colors.white , fontWeight: FontWeight.bold),),
                      SizedBox(height: 15,),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              topLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30),
                              bottomLeft: Radius.circular(10),
                            ),
                          color: Colors.white
                        ),
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5, left: 20),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.credit_card_outlined,color: buttonPressBlueColor(),size: 30,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Text("Default Credit Card", style: TextStyle(color: buttonPressBlueColor(), fontWeight: FontWeight.bold, fontSize: 15),),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Ending 1234", style: TextStyle(color: buttonPressBlueColor(), fontWeight: FontWeight.bold, fontSize: 15),),
                                Text("Exp 11/21", style: TextStyle(color: buttonPressBlueColor(), fontWeight: FontWeight.bold, fontSize: 15),),



                              ],
                            )

                          ],

                        ),
                      ),
                      SizedBox(height: 30,),


                      Center(
                        child: Container(
                          width: 280,
                          height: 60,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.white
                          ),
                          child: Center(
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )),
                        ),
                      ),




                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.menu, color: Colors.white, size: 50,),
                        Text("Menu", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
              ]
          )),


    );
  }
}
