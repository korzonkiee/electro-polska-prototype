import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;

class EventsMap extends StatefulWidget {
  EventsMap({Key key}) : super(key: key);

  _EventsMapState createState() => _EventsMapState();
}

class _EventsMapState extends State<EventsMap> {
  Completer<GoogleMapController> _controller = Completer();
  String _mapStyle;

  @override
  void initState() {
    super.initState();

    rootBundle.loadString('assets/map_style.txt').then((string) {
      _mapStyle = string;
    });
  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(52.2297, 21.0122),
    zoom: 12,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        myLocationEnabled: false,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
          controller.setMapStyle(_mapStyle);
        },
      ),
    );
  }
}
