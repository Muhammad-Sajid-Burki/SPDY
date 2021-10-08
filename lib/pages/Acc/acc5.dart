import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spdy/pages/Widgets/colors.dart';

class Acc_5 extends StatefulWidget {

  @override
  _Acc_5State createState() => _Acc_5State();
}

class _Acc_5State extends State<Acc_5> {

  TextEditingController oldPhoneEditingController = new TextEditingController();
  TextEditingController newPhoneEditingController = new TextEditingController();

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
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Account Settings", style: TextStyle(fontSize: 30, color: Colors.white),),



                    SizedBox(height: 40,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Old Cell Phone Number", style: TextStyle(fontSize: 15, color: Colors.white),),
                        TextFormField(
                          controller: oldPhoneEditingController,

                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Old Number",
                              labelStyle: TextStyle(fontSize: 14.0),
                              hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15.0)),

                          style: TextStyle(fontSize: 14.0),
                        ),
                        SizedBox(height: 20,),

                        Text("New Cell Phone Number", style: TextStyle(fontSize: 15, color: Colors.white),),
                        TextFormField(
                          controller: newPhoneEditingController,



                          keyboardType: TextInputType.number,
                          // validator:
                          // Validators.compose([
                          //   Validators.required('Password is required'),
                          //   Validators.patternString(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$', 'Invalid Password')
                          // ]),
                          decoration: InputDecoration(

                            focusColor: Colors.black,
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Colors.white,
                            labelText: "New Number",
                            labelStyle: TextStyle(fontSize: 14.0),
                            hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 10.0),
                          ),

                          style: TextStyle(fontSize: 14.0),
                        ),

                      ],
                    ),
                    SizedBox(height: 70,),

                    (oldPhoneEditingController.text.isEmpty || newPhoneEditingController.text.isEmpty) ?


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
                    ) : Center(
                      child: Container(
                        width: 280,
                        height: 60,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50.0),
                            color: buttonPressBlueColor()
                        ),
                        child: Center(
                            child: Text(
                              "Submit",
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

              ],
            ),
          )),


    );
  }
}
