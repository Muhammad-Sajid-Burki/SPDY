import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spdy/pages/Widgets/colors.dart';

class Register_3 extends StatefulWidget {
  @override
  _Register_3State createState() => _Register_3State();
}

class _Register_3State extends State<Register_3> {
  TextEditingController phoneEditingController = new TextEditingController();
  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController passEditingController = new TextEditingController();
  TextEditingController cnfrmPassEditingController = new TextEditingController();

  bool? _isChecked = false;
  String _currText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: backgroundColor(),
          child: Padding(
            padding:
                const EdgeInsets.only(top: 70, bottom: 20, right: 35, left: 35),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Account Registeration",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cell Phone Number",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        TextField(
                          controller: phoneEditingController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "123-456-7890",
                              labelStyle: TextStyle(fontSize: 14.0),
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15.0)),
                          style: TextStyle(fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Email",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        TextField(
                          controller: emailEditingController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              focusColor: Colors.black,
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "example@example.com",
                              labelStyle: TextStyle(fontSize: 14.0),
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 10.0)),
                          style: TextStyle(fontSize: 14.0),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Password",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
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
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Confirm Password",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        TextField(
                          controller: cnfrmPassEditingController,
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
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          focusColor: Colors.white,
                          activeColor: Colors.white,
                          checkColor: Colors.blue,
                          hoverColor: Colors.white,



                          value: _isChecked,
                          onChanged: (val) {
                            setState(() {
                              _isChecked = val;
                              if (val == true) {
                                _currText = val.toString();
                              }
                            });
                          },
                        ),
                        Text("Terms of Services",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            )),
                      ],
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    (phoneEditingController.text.isEmpty || emailEditingController.text.isEmpty ||
                            passEditingController.text.isEmpty || cnfrmPassEditingController.text.isEmpty)
                        ? Center(
                            child: Container(
                              width: 280,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Colors.white),
                              child: Center(
                                  child: Text(
                                "Create Account",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )),
                            ),
                          )
                        : Center(
                            child: Container(
                              width: 280,
                              height: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: buttonPressBlueColor()),
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
