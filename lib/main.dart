import 'package:flutter/material.dart';
import 'package:spdy/Map/map.dart';
import 'package:spdy/pages/App/app1.dart';
import 'package:spdy/pages/Registeration/login_page.dart';
import 'package:spdy/pages/Widgets/colors.dart';
import 'package:spdy/pages/Acc/acc3.dart';
import 'package:spdy/pages/Acc/acc2.dart';
import 'package:spdy/pages/Acc/acc7.dart';
import 'package:spdy/pages/Acc/acc1.dart';
import 'package:spdy/pages/App/app3.dart';
import 'package:spdy/pages/App/app2.dart';
import 'package:spdy/pages/Acc/acc5.dart';
import 'package:spdy/pages/Login/login1.dart';
import 'package:spdy/payment/payment_option.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: backgroundColor(),
      ),
      debugShowCheckedModeBanner: false,
      home: PaymentOptions(),
     
    );
  }
}

