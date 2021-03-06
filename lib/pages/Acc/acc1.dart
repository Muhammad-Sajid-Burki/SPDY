import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spdy/pages/Widgets/colors.dart';

class Acc_1 extends StatefulWidget {

  @override
  _Acc_1State createState() => _Acc_1State();
}

class _Acc_1State extends State<Acc_1> {
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
                      Text("For security purposes, we require password to access your Account Settings.", style: TextStyle(fontSize: 18, color: Colors.white),),


                      SizedBox(height: 50,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email or Phone Number", style: TextStyle(fontSize: 15, color: Colors.white),),
                          TextField(

                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "ted@car.com",
                                hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15.0)),

                            style: TextStyle(fontSize: 14.0, color: Colors.black),
                          ),
                          SizedBox(height: 20,),

                          Text("Password", style: TextStyle(fontSize: 15, color: Colors.white),),
                          TextField(
                            obscureText: true,

                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                focusColor: Colors.black,
                                border: InputBorder.none,
                                filled: true,
                                fillColor: Colors.white,
                                hintText: "********",
                                hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 10.0)),

                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                      SizedBox(height: 100,),


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
