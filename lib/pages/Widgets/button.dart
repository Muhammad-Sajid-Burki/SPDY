import 'package:flutter/material.dart';
import 'package:spdy/pages/Widgets/colors.dart';

Widget pressedButton(String text) {
  return Center(
    child: Container(
      width: 280,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0), color: buttonPressBlueColor()),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      )),
    ),
  );
}

Widget button(String text) {
  return Center(
    child: Container(
      width: 280,
      height: 60,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: Colors.white
      ),
      child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          )),
    ),
  );
}


