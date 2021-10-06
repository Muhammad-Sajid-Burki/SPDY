import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:spdy/pages/Widgets/colors.dart';

class Menu_0 extends StatefulWidget {

  @override
  _Menu_0State createState() => _Menu_0State();
}

class _Menu_0State extends State<Menu_0> {
  @override
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,


      body: Stack(
        children: [
          GoogleMap(
            padding: EdgeInsets.only(bottom: bottomPaddingOfMap),
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            myLocationButtonEnabled: false,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
              newGoogleMapController = controller;

              locatePosition();
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 60),
            child: Container(
              alignment: Alignment.center ,
              padding: EdgeInsets.all(10),
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                  color: backgroundColor(),
                borderRadius: BorderRadius.circular(5)
                      
              ),
              child: Text("There are 10 online providers nearby.", style: TextStyle(fontSize: 16, color: Colors.white,letterSpacing: 1),),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Container(
                      width: 280,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: buttonPressBlueColor()),
                      child: Center(
                          child: Text(
                            "New Order",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Icon(
                    Icons.menu,
                    color: buttonPressBlueColor(),
                    size: 50,
                  ),

                  Text(
                    "Menu",
                    style: TextStyle(
                        color: buttonPressBlueColor(),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}
