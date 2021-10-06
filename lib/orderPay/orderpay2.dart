import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spdy/pages/Widgets/colors.dart';

class OrderPay_2 extends StatefulWidget {


  @override
  _OrderPay_2State createState() => _OrderPay_2State();
}

class _OrderPay_2State extends State<OrderPay_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor(),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Stack(

              children: [
                Positioned(
                    left: 30,
                    top: 70,
                    child: Text("Payment", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20))),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: ListView(

                    children: [
                      Text("Name on Card"),
                      Card(

                        child: Text("New"),
                      ),
                      Card(

                        child: Text("New"),
                      ),
                      Card(

                        child: Text("New"),
                      ),
                      Card(

                        child: Text("New"),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        child: Row(

                          children: [
                            Icon(Icons.navigate_before, color: Colors.white, size: 60,),
                            Text('Back', style: TextStyle(color: Colors.white, fontSize: 20),),

                          ],
                        ),
                        onPressed: () {
                          // _controller.previousPage(
                          //     duration: _kDuration, curve: _kCurve);
                        },
                      ),
                      FlatButton(
                        child: Row(
                          children: [
                            Text('Next', style: TextStyle(color: Colors.white, fontSize: 20),),
                            Icon(Icons.navigate_next, color: Colors.white, size: 60,),

                          ],
                        ),
                        onPressed: () {
                          // _controller.nextPage(duration: _kDuration, curve: _kCurve);
                        },
                      )
                    ],
                  ),
                )
              ]
          ),
        )
    );
  }
}



Widget menuCard(String title, String subtitle) {
  return Card(
    child: Column(
      children: [
        Text(title),
        Text(subtitle)

      ],
    ),
    elevation: 5,
    margin: EdgeInsets.all(10),
  );
}

