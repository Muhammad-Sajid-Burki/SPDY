import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spdy/Map/clientMap1.dart';
import 'package:spdy/Map/clientMap4.dart';
import 'package:spdy/orderPay/orderpay2.dart';
import 'package:spdy/orderPay/payment_option2.dart';
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
import 'package:spdy/pages/Order/order1.dart';
import 'package:spdy/pages/Order/order2.dart';
import 'package:spdy/pages/Order/order4.dart';
import 'package:spdy/pages/Order/order5.dart';
import 'package:spdy/pages/Pay/pay1.dart';
import 'package:spdy/pages/Pay/pay12.dart';
import 'package:spdy/pages/Pay/pay2.dart';
import 'package:spdy/pages/Pay/pay4.dart';
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

import 'Map/clientMap2.dart';
import 'extra.dart';
import 'orderPay/orderpay1.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.light
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
      home: Register_3(),
     
    );
  }
}

