import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:spdy/pages/Widgets/colors.dart';

class Past_5 extends StatefulWidget {
  @override
  _Past_5State createState() => _Past_5State();
}

class _Past_5State extends State<Past_5> {
  Completer<GoogleMapController> _controller = Completer();
  late GoogleMapController newGoogleMapController;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  late Position currentPosition;
  var geolocator = Geolocator();
  double bottomPaddingOfMap = 0;

  void locatePosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    currentPosition = position;

    LatLng latLatPosition = LatLng(position.latitude, position.longitude);

    CameraPosition cameraPosition =
        CameraPosition(target: latLatPosition, zoom: 14);
    newGoogleMapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
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
                padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
                child: Text("Past Orders",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 110),
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: buttonPressBlueColor(), width: 2),
                          borderRadius: BorderRadius.circular(4.0)),
                      child: ListTile(
                        title: Text("XYZ Roadside",
                            style: TextStyle(
                                color: buttonPressBlueColor(),
                                fontWeight: FontWeight.bold)),
                        subtitle: Text('#ABC-123',
                            style: TextStyle(color: buttonPressBlueColor())),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          // space between two icons
                          children: <Widget>[
                            Text("\$22.21",
                                style: TextStyle(
                                    color: buttonPressBlueColor(),
                                    fontWeight: FontWeight.bold)), // icon-1
                            Text('Completed on 05/29/2021',
                                style:
                                    TextStyle(color: buttonPressBlueColor())),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4.0),
                        color: Colors.white,
                      ),
                      height: 380,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Please write your concerns below",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.0),
                                      border: Border.all(color: Colors.grey)),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 15),
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Type Here...",
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  height: 240,
                                  // width: MediaQuery.of(context).size.width,
                                ),
                                SizedBox(height: 20),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _textColor = Colors.white;
                                      _containerColor = buttonPressBlueColor();
                                    });
                                  },
                                  child: Center(
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          color: _containerColor,
                                          border: Border.all(
                                              color: buttonPressBlueColor(),
                                              width: 2)),
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
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
                        Icons.cancel,
                        color: Colors.white,
                        size: 50,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Cancel",
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
