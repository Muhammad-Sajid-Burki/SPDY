import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spdy/pages/Widgets/colors.dart';
import 'package:spdy/pages/Acc/acc1.dart';

class Login_1 extends StatefulWidget {

  @override
  _Login_1State createState() => _Login_1State();
}

class _Login_1State extends State<Login_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: backgroundColor(),
          child:
          Padding(
            padding: const EdgeInsets.only(top: 120, bottom: 50),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [


                    SvgPicture.asset("assets/images/spdy.svg"),
                    SizedBox(height: 50,),
                    Text("Welcome!", style: TextStyle(fontSize: 30, color: Colors.white),),
                    SizedBox(height: 80,),
                    Container(
                      width: 280,
                      height: 60,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.white
                      ),
                      child: Center(
                          child: Text(
                            "Register",
                            style: TextStyle(
                                color: Colors.black,
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
                          color: buttonPressBlueColor()
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Acc_1()));
                        },
                        child: Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            )),
                      ),
                    ),
                  ],
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Text("©SPDY Technologies, LLC", style: TextStyle(fontSize: 15, color: Colors.white),)),

              ],
            ),
          )),
    );
  }
}
