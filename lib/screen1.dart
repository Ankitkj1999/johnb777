import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:johnb777/constants.dart';
import 'package:johnb777/screen2.dart';
import 'package:johnb777/screen3.dart';

class Screen1 extends StatefulWidget {
  static String id = 'screen1';
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {

  Completer<GoogleMapController> _controller = Completer();

  double zoomVal = 5.0;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom:60.0),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: CameraPosition(
                      target: LatLng(40.712776, -74.005974), zoom: 12),
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                  markers: {
                    Marker(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return new Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                  'images/laseradologo.png',
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Text('Laserado Lasertag'),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: IconButton(
                                                  icon: Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.deepOrangeAccent,
                                                    size: 25,
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ],
                                          ),
                                          Center(
                                            child: Container(
                                              width: screenSize.width / 0,
                                              height: 0.4,
                                              color: Colors.black54,
                                              margin: EdgeInsets.only(top: 0.0),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 3.0),
                                            child: Image.asset(
                                              'images/Component217.png',
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10.0,
                                                bottom: 30),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Dortmunder Str. 10',
                                                    ),
                                                    Text(
                                                      '58455 Witten',
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text('Öffnungszeiten:'),
                                                    Text('10:30 - 22:30'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10.0,
                                                bottom: 20),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Mehr Infos:',
                                                    ),
                                                    Text(
                                                      'www.example.com',
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(''),
                                                    Text(''),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: <Widget>[
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 12.0, left: 14),
                                                    child: Container(
                                                      width: 31.0,
                                                      height: 29.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/link.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 14.0, left: 16),
                                                    child: Container(
                                                      width: 27.0,
                                                      height: 27.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/call.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 16.0, left: 15),
                                                    child: Container(
                                                      width: 34.0,
                                                      height: 22.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/message.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 13,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      markerId: MarkerId('newyork1'),
                      position: LatLng(40.742451, -74.005959),
//                  infoWindow: InfoWindow(title: 'Los Tacos'),
                      icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueOrange,
                      ),
                    ),
                    Marker(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return new Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                  'images/laseradologo.png',
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Text('Laserado Lasertag'),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: IconButton(
                                                  icon: Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.deepOrangeAccent,
                                                    size: 25,
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ],
                                          ),
                                          Center(
                                            child: Container(
                                              width: screenSize.width / 0,
                                              height: 0.4,
                                              color: Colors.black54,
                                              margin: EdgeInsets.only(top: 0.0),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 3.0),
                                            child: Image.asset(
                                              'images/Component217.png',
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10.0,
                                                bottom: 30),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Dortmunder Str. 10',
                                                    ),
                                                    Text(
                                                      '58455 Witten',
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text('Öffnungszeiten:'),
                                                    Text('10:30 - 22:30'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10.0,
                                                bottom: 20),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Mehr Infos:',
                                                    ),
                                                    Text(
                                                      'www.example.com',
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(''),
                                                    Text(''),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: <Widget>[
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 12.0, left: 14),
                                                    child: Container(
                                                      width: 31.0,
                                                      height: 29.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/link.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 14.0, left: 16),
                                                    child: Container(
                                                      width: 27.0,
                                                      height: 27.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/call.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 16.0, left: 15),
                                                    child: Container(
                                                      width: 34.0,
                                                      height: 22.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/message.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 13,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      markerId: MarkerId('gramercy'),
                      position: LatLng(40.738380, -73.988426),
//                  infoWindow: InfoWindow(title: 'Gramercy Tavern'),
                      icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueOrange,
                      ),
                    ),
                    Marker(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return new Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                  'images/laseradologo.png',
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Text('Laserado Lasertag'),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: IconButton(
                                                  icon: Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.deepOrangeAccent,
                                                    size: 25,
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ],
                                          ),
                                          Center(
                                            child: Container(
                                              width: screenSize.width / 0,
                                              height: 0.4,
                                              color: Colors.black54,
                                              margin: EdgeInsets.only(top: 0.0),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 3.0),
                                            child: Image.asset(
                                              'images/Component217.png',
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10.0,
                                                bottom: 30),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Dortmunder Str. 10',
                                                    ),
                                                    Text(
                                                      '58455 Witten',
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text('Öffnungszeiten:'),
                                                    Text('10:30 - 22:30'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10.0,
                                                bottom: 20),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Mehr Infos:',
                                                    ),
                                                    Text(
                                                      'www.example.com',
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(''),
                                                    Text(''),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: <Widget>[
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 12.0, left: 14),
                                                    child: Container(
                                                      width: 31.0,
                                                      height: 29.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/link.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 14.0, left: 16),
                                                    child: Container(
                                                      width: 27.0,
                                                      height: 27.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/call.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 16.0, left: 15),
                                                    child: Container(
                                                      width: 34.0,
                                                      height: 22.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/message.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 13,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      markerId: MarkerId('bernardin'),
                      position: LatLng(40.761421, -73.981667),
//            infoWindow: InfoWindow(title: 'Le Bernardin'),
                      icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueOrange,
                      ),
                    ),
                    Marker(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return new Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                  'images/laseradologo.png',
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Text('Laserado Lasertag'),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: IconButton(
                                                  icon: Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.deepOrangeAccent,
                                                    size: 25,
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ],
                                          ),
                                          Center(
                                            child: Container(
                                              width: screenSize.width / 0,
                                              height: 0.4,
                                              color: Colors.black54,
                                              margin: EdgeInsets.only(top: 0.0),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 3.0),
                                            child: Image.asset(
                                              'images/Component217.png',
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10.0,
                                                bottom: 30),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Dortmunder Str. 10',
                                                    ),
                                                    Text(
                                                      '58455 Witten',
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text('Öffnungszeiten:'),
                                                    Text('10:30 - 22:30'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10.0,
                                                bottom: 20),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Mehr Infos:',
                                                    ),
                                                    Text(
                                                      'www.example.com',
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(''),
                                                    Text(''),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: <Widget>[
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 12.0, left: 14),
                                                    child: Container(
                                                      width: 31.0,
                                                      height: 29.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/link.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 14.0, left: 16),
                                                    child: Container(
                                                      width: 27.0,
                                                      height: 27.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/call.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 16.0, left: 15),
                                                    child: Container(
                                                      width: 34.0,
                                                      height: 22.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/message.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 13,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      markerId: MarkerId('bluehill'),
                      position: LatLng(40.732128, -73.999619),
//                  infoWindow: InfoWindow(title: 'Blue Hill'),
                      icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueOrange,
                      ),
                    ),
                    Marker(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return new Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                  'images/laseradologo.png',
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Text('Laserado Lasertag'),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: IconButton(
                                                  icon: Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.deepOrangeAccent,
                                                    size: 25,
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ],
                                          ),
                                          Center(
                                            child: Container(
                                              width: screenSize.width / 0,
                                              height: 0.4,
                                              color: Colors.black54,
                                              margin: EdgeInsets.only(top: 0.0),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 3.0),
                                            child: Image.asset(
                                              'images/Component217.png',
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10.0,
                                                bottom: 30),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Dortmunder Str. 10',
                                                    ),
                                                    Text(
                                                      '58455 Witten',
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text('Öffnungszeiten:'),
                                                    Text('10:30 - 22:30'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10.0,
                                                bottom: 20),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Mehr Infos:',
                                                    ),
                                                    Text(
                                                      'www.example.com',
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(''),
                                                    Text(''),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: <Widget>[
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 12.0, left: 14),
                                                    child: Container(
                                                      width: 31.0,
                                                      height: 29.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/link.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 14.0, left: 16),
                                                    child: Container(
                                                      width: 27.0,
                                                      height: 27.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/call.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 16.0, left: 15),
                                                    child: Container(
                                                      width: 34.0,
                                                      height: 22.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/message.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 13,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      markerId: MarkerId('newyork2'),
                      position: LatLng(40.729640, -73.983510),
//                  infoWindow: InfoWindow(title: 'Tree Bistro'),
                      icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueOrange,
                      ),
                    ),
                    Marker(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return new Dialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Expanded(
                                                flex: 1,
                                                child: Image.asset(
                                                  'images/laseradologo.png',
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Text('Laserado Lasertag'),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: IconButton(
                                                  icon: Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.deepOrangeAccent,
                                                    size: 25,
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ],
                                          ),
                                          Center(
                                            child: Container(
                                              width: screenSize.width / 0,
                                              height: 0.4,
                                              color: Colors.black54,
                                              margin: EdgeInsets.only(top: 0.0),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                            const EdgeInsets.only(top: 3.0),
                                            child: Image.asset(
                                              'images/Component217.png',
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10.0,
                                                bottom: 30),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Dortmunder Str. 10',
                                                    ),
                                                    Text(
                                                      '58455 Witten',
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text('Öffnungszeiten:'),
                                                    Text('10:30 - 22:30'),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10.0,
                                                bottom: 20),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                              children: <Widget>[
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(
                                                      'Mehr Infos:',
                                                    ),
                                                    Text(
                                                      'www.example.com',
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text(''),
                                                    Text(''),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: <Widget>[
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 12.0, left: 14),
                                                    child: Container(
                                                      width: 31.0,
                                                      height: 29.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/link.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 14.0, left: 16),
                                                    child: Container(
                                                      width: 27.0,
                                                      height: 27.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/call.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Stack(
                                                children: <Widget>[
                                                  Container(
                                                    width: 57.0,
                                                    height: 57.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'symbols/Ellipse.png'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                      border: Border.all(
                                                        color: Colors.transparent,
                                                        width: 0.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.only(
                                                        top: 16.0, left: 15),
                                                    child: Container(
                                                      width: 34.0,
                                                      height: 22.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              'symbols/message.png'),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        border: Border.all(
                                                          color: Colors.transparent,
                                                          width: 0.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 13,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            });
                      },
                      markerId: MarkerId('newyork3'),
                      position: LatLng(40.719109, -74.000183),
//                  infoWindow: InfoWindow(title: 'Le Coucou'),
                      icon: BitmapDescriptor.defaultMarkerWithHue(
                        BitmapDescriptor.hueOrange,
                      ),
                    ),
                  },
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Card(
                  elevation: 5,
                  margin: EdgeInsets.all(0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                    ),
                  ),
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.only(top:10.0, bottom: 7, left:5, right: 5),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex:0,
                                child: PopupMenuButton(
                                  onSelected: choiceAction,
                                  itemBuilder: (BuildContext context) {
                                    return Constants.choices.map((String choice) {
                                      return PopupMenuItem<String>(
                                        value: choice,
                                        child: Text(choice),
                                      );
                                    }).toList();
                                  },
                                  child: Icon(Icons.dehaze,
                                  color: Colors.black,
                                  ),
                                ),
                            ),
                            Expanded(
                              child: Center(child: Text('Print Label', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),)),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 0, right: 0, top: 10),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 0, left: 0, bottom: 0),
                            child: TextFormField(
                              style: TextStyle(color: Colors.black),
                              decoration: new InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(8),
                                hintText: 'From',
                                hintStyle: TextStyle(
                                    color: Colors.grey[600], fontSize: 13),
                                prefixIcon: Icon(Icons.search,
                                  color: Colors.grey[600],
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 0, right: 0, top: 5),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 0, left: 0, bottom: 0),
                            child: TextFormField(
                              style: TextStyle(color: Colors.black),
                              decoration: new InputDecoration(
                                isDense: true,
                                contentPadding: EdgeInsets.all(8),
                                hintText: 'Sending To',
                                hintStyle: TextStyle(
                                    color: Colors.grey[600], fontSize: 13),
                                prefixIcon: Icon(Icons.search,
                                color: Colors.grey[600],
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:5.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 0, right: 0,),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: Colors.black),
                                    decoration: new InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(8),
                                      hintText: 'Box Size [inches] height',
                                      hintStyle: TextStyle(
                                          color: Colors.grey[600], fontSize: 8),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 2, right: 0,),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: Colors.black),
                                    decoration: new InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(8),
                                      hintText: 'Box Size [inches] width',
                                      hintStyle: TextStyle(fontFamily: 'Lato-Regular',
                                          color: Colors.grey[600], fontSize: 8),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 2, right: 0,),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: Colors.black),
                                    decoration: new InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(8),
                                      hintText: 'Box Size [inches] length',
                                      hintStyle: TextStyle(
                                          color: Colors.grey[600], fontSize: 8),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top:5, left: 0, right: 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 2, right: 0,),
                                  child: TextFormField(
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: Colors.black),
                                    decoration: new InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.all(8),
                                      hintText: 'Box Weight in kg',
                                      hintStyle: TextStyle(
                                          color: Colors.grey[600], fontSize: 12),
                                      filled: true,
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(7.0),
                                      topLeft: Radius.circular(7.0),
                                      bottomRight: Radius.circular(7.0),
                                      bottomLeft: Radius.circular(7.0),
                                    ),
                                  ),
                                  height: 30,
                                  child: Center(
                                      child: Text(
                                        'Create Shipment',
                                        style: TextStyle(fontWeight: FontWeight.bold,
                                          color: Colors.white, fontSize: 16,),
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 255,
                  child: DraggableScrollableSheet(
//          initialChildSize: 0.3,
//          minChildSize: 0.1,
//          maxChildSize: 0.8,
                    builder: (context, controller){
                      return Stack(
                        children: [
                        Container(
                        color: Colors.white,
                        child: ListView.builder(
                          itemCount: 1,
                          controller: controller,
                          itemBuilder: (context, index){
                            return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 8.0),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex:0,
                                            child: Image.asset('images/icon1.jpeg',
                                              height: 35,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 15,
                                          ),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                              children: [
                                                Text('Shipping', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 0,
                                            child: Column(
                                              children: [
                                                Text('\$0.00', style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold, fontSize: 22),),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left:15.0, right: 15),
                                      child: Divider(
                                        thickness: 0.7,
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Card(
                                            elevation: 2,
                                            margin: EdgeInsets.only(top: 5),
                                            color: Colors.grey[300],
                                            child: Padding(
                                              padding: const EdgeInsets.only(top:10.0, left: 2, right: 2),
                                              child: Container(
                                                height: 90,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex:0,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Image.asset('images/icon2.png',
                                                            height: 44,
                                                          ),
                                                          Text(''),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.location_on,
                                                                size: 10,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(''),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:3.0),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                                              children: [
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Icon(Icons.location_on,
                                                                size: 10,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(''),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 0,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Text('\$0.00'),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Card(
                                            elevation: 2,
                                            margin: EdgeInsets.only(top: 5),
                                            color: Colors.grey[300],
                                            child: Padding(
                                              padding: const EdgeInsets.only(top:10.0, left: 2, right: 2),
                                              child: Container(
                                                height: 90,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex:0,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Image.asset('images/icon2.png',
                                                            height: 44,
                                                          ),
                                                          Text(''),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.location_on,
                                                                size: 10,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(''),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:3.0),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                                              children: [
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Icon(Icons.location_on,
                                                                size: 10,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(''),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 0,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Text('\$0.00'),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Card(
                                            elevation: 2,
                                            margin: EdgeInsets.only(top: 5),
                                            color: Colors.grey[300],
                                            child: Padding(
                                              padding: const EdgeInsets.only(top:10.0, left: 2, right: 2),
                                              child: Container(
                                                height: 90,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex:0,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Image.asset('images/icon2.png',
                                                            height: 44,
                                                          ),
                                                          Text(''),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.location_on,
                                                                size: 10,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(''),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:3.0),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                                              children: [
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Icon(Icons.location_on,
                                                                size: 10,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(''),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 0,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Text('\$0.00'),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Card(
                                            elevation: 2,
                                            margin: EdgeInsets.only(top: 5),
                                            color: Colors.grey[300],
                                            child: Padding(
                                              padding: const EdgeInsets.only(top:10.0, left: 2, right: 2),
                                              child: Container(
                                                height: 90,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex:0,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Image.asset('images/icon2.png',
                                                            height: 44,
                                                          ),
                                                          Text(''),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.location_on,
                                                                size: 10,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(''),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:3.0),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                                              children: [
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Icon(Icons.location_on,
                                                                size: 10,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(''),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 0,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Text('\$0.00'),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Card(
                                            elevation: 2,
                                            margin: EdgeInsets.only(top: 5),
                                            color: Colors.grey[300],
                                            child: Padding(
                                              padding: const EdgeInsets.only(top:10.0, left: 2, right: 2),
                                              child: Container(
                                                height: 90,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex:0,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Image.asset('images/icon2.png',
                                                            height: 44,
                                                          ),
                                                          Text(''),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.location_on,
                                                                size: 10,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(''),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:3.0),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                                              children: [
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Icon(Icons.location_on,
                                                                size: 10,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(''),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 0,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Text('\$0.00'),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Card(
                                            elevation: 2,
                                            margin: EdgeInsets.only(top: 5),
                                            color: Colors.grey[300],
                                            child: Padding(
                                              padding: const EdgeInsets.only(top:10.0, left: 2, right: 2),
                                              child: Container(
                                                height: 90,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex:0,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Image.asset('images/icon2.png',
                                                            height: 44,
                                                          ),
                                                          Text(''),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Icon(Icons.location_on,
                                                                size: 10,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(''),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(left:3.0),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.stretch,
                                                              children: [
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                                Text('.', style: TextStyle(fontWeight: FontWeight.bold,),),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Icon(Icons.location_on,
                                                                size: 10,
                                                              ),
                                                              SizedBox(
                                                                width: 5,
                                                              ),
                                                              Text(''),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      flex: 0,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Text('\$0.00'),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                  ],
                                )
                            );
                          },
                        ),
                      ),
                          Padding(
                            padding: const EdgeInsets.only(top:10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Card(
                                  margin: EdgeInsets.all(0),
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 8.0, left: 8, right: 8),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 0, right: 2),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(7.0),
                                                  topLeft: Radius.circular(7.0),
                                                  bottomRight: Radius.circular(7.0),
                                                  bottomLeft: Radius.circular(7.0),
                                                ),
                                              ),
                                              height: 35,
                                              child: Center(
                                                  child: Text(
                                                    'CANCEL SHIPMENT',
                                                    style: TextStyle(fontWeight: FontWeight.bold,
                                                      color: Colors.white, fontSize: 13,),
                                                  )),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 2, right: 0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.green,
                                                borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(7.0),
                                                  topLeft: Radius.circular(7.0),
                                                  bottomRight: Radius.circular(7.0),
                                                  bottomLeft: Radius.circular(7.0),
                                                ),
                                              ),
                                              height: 35,
                                              child: Center(
                                                  child: Text(
                                                    'CONTINUE TO PAYEMENT',
                                                    style: TextStyle(fontWeight: FontWeight.bold,
                                                      color: Colors.white, fontSize: 13,),
                                                  )),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  void choiceAction(String choice) {
    if (choice == Constants.lockermapntracking) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Screen2();
      }));
    }
    if (choice == Constants.receiptspreviousshipments) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Screen3();
      }));
    }
  }
}
