import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:spdy/Model/directionDetails.dart';
import 'package:spdy/assistant/assistantMethod.dart';
import 'package:spdy/pages/Widgets/button.dart';
import 'package:spdy/pages/Widgets/colors.dart';
import 'package:spdy/pages/Acc/acc1.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
  late DirectionDetails tripDirectionDetails;
  List<LatLng> pLineCoordinates = [];
  late Position currentPosition;
  var geolocator = Geolocator();
  Set<Polyline> polyLineSet = {};
  Set<Marker> markerSet = {};
  Set<Circle> circleSet = {};

  @override
  void initState() {
    /// add origin marker origin marker
    _addMarker(
      LatLng(_originLatitude, _originLongitude),
      "origin",
      BitmapDescriptor.defaultMarker,
    );

    // Add destination marker
    _addMarker(
      LatLng(_destLatitude, _destLongitude),
      "destination",
      BitmapDescriptor.defaultMarkerWithHue(90),
    );

    _getPolyline();

    super.initState();
  }

  void locatePosition() async {
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
    currentPosition = position;

    LatLng latLatPosition = LatLng(position.latitude,position.longitude);
    print(currentPosition.altitude);
    print(currentPosition.latitude);

    CameraPosition cameraPosition =
    new CameraPosition(target: latLatPosition, zoom: 14);
    newGoogleMapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

    String address =
    await AssistantMethods.searchCoordinateAddress(position, context);
    print("this is your address " + address);
  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(_originLatitude, _originLongitude),
    zoom: 14.4746,
  );

  // This method will add markers to the map based on the LatLng position
  _addMarker(LatLng position, String id, BitmapDescriptor descriptor) {
    MarkerId markerId = MarkerId(id);
    Marker marker =
    Marker(markerId: markerId, icon: descriptor, position: position);
    markers[markerId] = marker;
  }
  _addPolyLine(List<LatLng> polylineCoordinates) {
    PolylineId id = PolylineId("mypolypoint");
    Polyline polyline = Polyline(
      polylineId: id,
      points: polylineCoordinates,
      width: 4,
    );
    polylines[id] = polyline;
    setState(() {});
  }
  void _getPolyline() async {
    List<LatLng> polylineCoordinates = [];

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyA5QBupZfYDYDMVGNOC53nGAF7K5FuDa1I",
      PointLatLng(_originLatitude, _originLongitude),
      PointLatLng(_destLatitude, _destLongitude),
      travelMode: TravelMode.driving,
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    } else {
      print(result.errorMessage);
    }
    _addPolyLine(polylineCoordinates);
  }

   Completer<WebViewController> _webcontroller =
  Completer<WebViewController>();


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
                            mapType: MapType.normal,
                            myLocationButtonEnabled: false,
                            initialCameraPosition: _kGooglePlex,
                            myLocationEnabled: true,
                            tiltGesturesEnabled: true,
                            compassEnabled: true,
                            scrollGesturesEnabled: true,
                            zoomGesturesEnabled: true,
                            zoomControlsEnabled: true,
                            polylines: Set<Polyline>.of(polylines.values),
                            markers: Set<Marker>.of(markers.values),
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
