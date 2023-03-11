// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_new
    return FlutterMap(
    options: MapOptions(
      center: LatLng(-21.463788, 47.1099472),
      zoom: -53.0,
    ),
    layers: [
      TileLayerOptions(
        urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
        subdomains: ['a', 'b', 'c'],
        // attributionBuilder: (_) {
        //   return Text("© OpenStreetMap contributors");
        // },
      ),
      MarkerLayerOptions(
        markers: [
          Marker(
            width: 80.0,
            height: 80.0,
            point: LatLng(-21.463788, 47.1099472),
            builder: (ctx) =>
            Container(
              child: Icon(Icons.location_on, color: Colors.pink, size: 30,),
            ),
          ),
        ],
      ),
    ],
  );
  }
}