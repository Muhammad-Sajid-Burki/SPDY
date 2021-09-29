import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SPDYMap extends StatefulWidget {

  @override
  _SPDYMapState createState() => _SPDYMapState();
}

class _SPDYMapState extends State<SPDYMap> {
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
      // newGoogleMapController.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));


    }

    static final CameraPosition _kGooglePlex = CameraPosition(
      target: LatLng(37.42796133580664, -122.085749655962),
      zoom: 14.4746,
    );


    @override
    Widget build(BuildContext context) {
      return new Scaffold(
        key: scaffoldKey,


        body: Stack(
          children: [
            GoogleMap(
              padding: EdgeInsets.only(bottom: bottomPaddingOfMap),
              mapType: MapType.normal,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
                newGoogleMapController = controller;

                locatePosition();
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 60),
              child: Container(
                padding: EdgeInsets.all(10),
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Column(
                children: [
                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order #123-ABC", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      Icon(Icons.more_vert)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("ABC Towning", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),

                ],
              ),),
            )



            //Hamburger Button for drawer

          ],
        ),

      );
    }
}
