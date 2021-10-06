import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spdy/pages/Widgets/colors.dart';

class Login_2 extends StatefulWidget {

  @override
  _Login_2State createState() => _Login_2State();
}

class _Login_2State extends State<Login_2> {

  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController passEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: backgroundColor(),
          child:
          Padding(
            padding: const EdgeInsets.only(top: 120, bottom: 20, right: 35, left: 35),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Text("Enter your Login info to access your SPDY Account", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),


                  SizedBox(height: 50,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email or Phone Number", style: TextStyle(fontSize: 15, color: Colors.white),),
                      TextField(
                        controller: emailEditingController,

                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.white,
                            labelText: "example@example.com",
                            labelStyle: TextStyle(fontSize: 14.0),
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 15.0)),

                        style: TextStyle(fontSize: 14.0),
                      ),
                      SizedBox(height: 20,),

                      Text("Password", style: TextStyle(fontSize: 15, color: Colors.white),),
                      TextField(
                        controller: passEditingController,
                        obscureText: true,

                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                            focusColor: Colors.black,
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.white,
                            labelText: "Type Password here..",
                            labelStyle: TextStyle(fontSize: 14.0),
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 10.0)),

                        style: TextStyle(fontSize: 14.0),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Container(


                      alignment: Alignment.bottomRight,
                      child: Text("Forget Password", style: TextStyle(fontSize: 16, color: Colors.white, decoration: TextDecoration.underline))),

                  SizedBox(height: 100,),


                  (emailEditingController.text.isEmpty || passEditingController.text.isEmpty) ?
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
                            "Login",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                    ),
                  ) :
                  Center(
                    child: Container(
                      width: 280,
                      height: 60,

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: buttonPressBlueColor()
                      ),
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
                  SizedBox(height: 120,),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text("Don't Have an Account? ", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                        Text("Register", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold,decoration: TextDecoration.underline),)
                      ],
                    ),
                  ),



                ],
              ),
            ),
          )),


    );
  }
}
