import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spdy/Map/map.dart';
import 'package:spdy/orderPay/orderpay2.dart';
import 'package:spdy/pages/App/app1.dart';
import 'package:spdy/pages/Login/login2.dart';
import 'package:spdy/pages/Login/login4.dart';
import 'package:spdy/pages/Login/twoStep3.dart';
import 'package:spdy/pages/Menu/menu0.dart';
import 'package:spdy/pages/Menu/menu1.dart';
import 'package:spdy/pages/Menu/past0.dart';
import 'package:spdy/pages/Menu/past1.dart';
import 'package:spdy/pages/Menu/past3.dart';
import 'package:spdy/pages/Menu/past5.dart';
import 'package:spdy/pages/Registeration/login_page.dart';
import 'package:spdy/pages/Registeration/register2.dart';
import 'package:spdy/pages/Registeration/register3.dart';
import 'package:spdy/pages/Registeration/register5.dart';
import 'package:spdy/pages/Widgets/colors.dart';
import 'package:spdy/pages/Acc/acc3.dart';
import 'package:spdy/pages/Acc/acc2.dart';
import 'package:spdy/pages/Acc/acc7.dart';
import 'package:spdy/pages/Acc/acc1.dart';
import 'package:spdy/pages/App/app3.dart';
import 'package:spdy/pages/App/app2.dart';
import 'package:spdy/pages/Acc/acc5.dart';
import 'package:spdy/pages/Login/login1.dart';
import 'package:spdy/pages/current/current0.dart';
import 'package:spdy/pages/current/current1.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark
  ));
  runApp(
      const MyApp());
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
      home: Current_1(),
     
    );
  }
}

