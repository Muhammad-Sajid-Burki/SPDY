import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:spdy/pages/Menu/past5.dart';
import 'package:spdy/pages/Widgets/button.dart';
import 'package:spdy/pages/Widgets/colors.dart';
import 'package:spdy/pages/Acc/acc1.dart';

class Past_3 extends StatefulWidget {
  @override
  _Past_3State createState() => _Past_3State();
}

class _Past_3State extends State<Past_3> {

  Completer<GoogleMapController> _controller = Completer();
  late GoogleMapController newGoogleMapController;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();


  late Position currentPosition;
  var geolocator = Geolocator();
  double bottomPaddingOfMap = 0;

  void locatePosition() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    currentPosition = position;

    LatLng latLatPosition = LatLng(position.latitude,position.longitude);

    CameraPosition cameraPosition = CameraPosition(target: latLatPosition, zoom: 14);
    newGoogleMapController.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));


  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  Color _containerColor = Colors.white;
  Color _textColor = buttonPressBlueColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: backgroundColor(),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: GestureDetector(
                  child: Row(

                    children: [
                      Icon(Icons.navigate_before, color: Colors.white, size: 60,),
                      Text('Back', style: TextStyle(color: Colors.white, fontSize: 20),),

                    ],
                  ),
                  onTap: () {
                    // _controller.previousPage(
                    //     duration: _kDuration, curve: _kCurve);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 110,bottom: 180),
                child: Column(
                  children: [


                    Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: buttonPressBlueColor(),width: 2),
                          borderRadius: BorderRadius.circular(4.0)),
                      child: ListTile(
                        title: Text("XYZ Roadside", style: TextStyle(color: buttonPressBlueColor(), fontWeight: FontWeight.bold)),
                        subtitle: Text('#ABC-123', style: TextStyle(color: buttonPressBlueColor())),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          // space between two icons
                          children: <Widget>[
                            Text("\$22.21", style: TextStyle(color: buttonPressBlueColor(), fontWeight: FontWeight.bold)), // icon-1
                            Text('Completed on 05/29/2021', style: TextStyle(color: buttonPressBlueColor())),                              ],
                        ),

                      ),
                    ),
                    SizedBox(height: 20,),

                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: GoogleMap(
                          padding: EdgeInsets.only(bottom: bottomPaddingOfMap),
                          mapType: MapType.terrain,
                          myLocationButtonEnabled: false,
                          initialCameraPosition: _kGooglePlex,
                          onMapCreated: (GoogleMapController controller) {
                            _controller.complete(controller);
                            newGoogleMapController = controller;

                            locatePosition();
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),

                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _textColor = Colors.white;
                          _containerColor = buttonPressBlueColor();
                        });
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Past_5()));
                      },
                      child: Center(
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: _containerColor,
                          border: Border.all(color: buttonPressBlueColor(), width: 2)
                          ),
                          child: Center(
                              child: Text(
                                "Contact Support",
                                style: TextStyle(
                                    color: _textColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 50,
                      ),
                      SizedBox(
                        height: 10,
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
              ),
            ],
          )),
    );
  }
}
