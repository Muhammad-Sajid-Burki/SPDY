// import 'package:flutter/material.dart';
// import 'package:flutter_otp/flutter_otp.dart';
//
// // Now instantiate FlutterOtp class in order to call sendOtp function
// FlutterOtp otp = FlutterOtp();
// class SendOtp extends StatelessWidget {
//   String phoneNumber = "93XXXXXXXX"; //enter your 10 digit number
//   int minNumber = 1000;
//   int maxNumber = 6000;
//   String countryCode ="+91"; // give your country code if not it will take +1 as default
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("send otp using flutter_otp ")),
//       body: Container(
//         child: Center(
//             child: RaisedButton(
//               child: Text("Send"),
//               onPressed: () {
//                 // call sentOtp function and pass the parameters
//
//                 otp.sendOtp(phoneNumber, 'OTP is : pass the generated otp here ',
//                     minNumber, maxNumber, countryCode);
//               },
//             )),
//       ),
//     );
//   } }