import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:spdy/pages/Widgets/button.dart';
import 'package:spdy/pages/Widgets/colors.dart';
import 'package:spdy/pages/Acc/acc1.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';

class Order_5 extends StatefulWidget {
  @override
  _Order_5State createState() => _Order_5State();
}

// Starting point latitude
double _originLatitude = 34.0067324;
// Starting point longitude
double _originLongitude = 71.5537812;
// Destination latitude ,
double _destLatitude = 34.0011235;
// Destination Longitude
double _destLongitude = 71.5593617;
// Markers to show points on the map
Map<MarkerId, Marker> markers = {};

PolylinePoints polylinePoints = PolylinePoints();
Map<PolylineId, Polyline> polylines = {};

class _Order_5State extends State<Order_5> with TickerProviderStateMixin {


  Completer<GoogleMapController> _controller = Completer();
  late GoogleMapController newGoogleMapController;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  List<LatLng> pLineCoordinates = [];
  late Position currentPosition;
  var geolocator = Geolocator();

  double bottomPaddingOfMap = 0;


  void locatePosition() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    currentPosition = position;

    LatLng latLatPosition = LatLng(position.latitude,position.longitude);

    CameraPosition cameraPosition = CameraPosition(target: latLatPosition, zoom: 14);
    // newGoogleMapController.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));


  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );



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
                padding: const EdgeInsets.only(left: 30, top: 60, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Location Information", style: TextStyle(fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold)),
                    SizedBox(height: 20,),
                    Text("Pick-Up", style: TextStyle(fontSize: 17, color: Colors.white, )),
                    SizedBox(height: 1,),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TextField(
                            decoration: InputDecoration(hintText: "Enter your Address",hintStyle: TextStyle(color: Colors.grey[500]), border:InputBorder.none,
                            ),
                          ),
                        )
                    ),
                    SizedBox(height: 5,),
                    Text("Drop-Off", style: TextStyle(fontSize: 17, color: Colors.white, )),
                    SizedBox(height: 1,),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5)),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TextField(
                            decoration: InputDecoration(hintText: "Enter your Address",hintStyle: TextStyle(color: Colors.grey[500]), border:InputBorder.none,
                            ),
                          ),
                        )
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(
                          Icons.gps_fixed_outlined,
                        ),
                        SizedBox(width: 10,),
                        Text("Locate me", style: TextStyle(fontSize: 17, color: Colors.white, )),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 90),
                        child: Container(
                          child: GoogleMap(
                            padding: EdgeInsets.only(bottom: bottomPaddingOfMap),
                            mapType: MapType.normal,
                            myLocationButtonEnabled: false,
                            initialCameraPosition: _kGooglePlex,
                            onMapCreated: (GoogleMapController controller) {
                              _controller.complete(controller);
                              newGoogleMapController = controller;

                              locatePosition();
                            },
                          ),
                        ),
                      )
                    )

                  ],
                ),
              ),




              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,

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
                      Text("Step 1 of 4", style: TextStyle(fontSize: 15, color: Colors.white),),
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
                ),
              )
            ],
          )),
    );
  }
}
