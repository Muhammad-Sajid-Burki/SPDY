import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spdy/pages/Widgets/button.dart';
import 'package:spdy/pages/Widgets/colors.dart';

class App_2 extends StatefulWidget {
  @override
  _App_2State createState() => _App_2State();
}

class _App_2State extends State<App_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: backgroundColor(),
          child: Padding(
            padding: const EdgeInsets.only(top: 60, bottom: 20, left: 35,right: 35),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Notification",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Icon(Icons.cancel, color: Colors.white ,size: 35,)
                        ],
                      ),
                    ),

                    Text("Notify me via",style:TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        ),
                    ),


                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Email",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                              )                          ),
                            Icon(Icons.arrow_drop_down)

                          ],
                        ),
                      ),
                      height: 40,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                    ),
                    SizedBox(height: 1,),

                    Container(
                      alignment: Alignment.centerLeft,
                      width: MediaQuery.of(context).size.width ,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Text message",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            )
                        ),
                      ),
                      height: 40,
                      decoration: BoxDecoration(color: Colors.white),
                    ),
                    SizedBox(
                      height: 300,
                    ),
                    button("Save Changes"),


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
