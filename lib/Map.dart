import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'places_search_map.dart';

class Map extends StatefulWidget {
  @override
  MapState createState() => MapState();
}

class MapState extends State<Map> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text("City Halls Map"),
        backgroundColor: Colors.transparent,
        flexibleSpace: Image(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
        ),
      ),
        body: PlacesSearchMap(),
    );
  }
}