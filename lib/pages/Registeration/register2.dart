import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spdy/pages/Widgets/colors.dart';
import 'package:spdy/pages/Acc/acc1.dart';

class Register_2 extends StatefulWidget {

  @override
  _Register_2State createState() => _Register_2State();
}

class _Register_2State extends State<Register_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: backgroundColor(),
          child:
          Padding(
            padding: const EdgeInsets.only(top: 120, bottom: 20),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    Container(
                      width: 280,
                      height: 60,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: buttonPressColor()
                      ),
                      child: Center(
                          child: Text(
                            "Register as Customer",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: 280,
                      height: 60,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.white,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Acc_1()));
                        },
                        child: Center(
                            child: Text(
                              "Register as Povider",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )),
                      ),
                    ),
                  ],
                ),
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
                        "Cancel",
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
