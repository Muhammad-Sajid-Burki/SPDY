import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spdy/pages/Widgets/colors.dart';
import 'package:spdy/pages/Acc/acc1.dart';

class Login1 extends StatefulWidget {

  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1> {
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
            child: Column(
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
                      color: Colors.blue[900]
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
                SizedBox(height: 180,),
                Text("©SPDY Technologies, LLC", style: TextStyle(fontSize: 10, color: Colors.white),),
              ],
            ),
          )),
    );
  }
}
