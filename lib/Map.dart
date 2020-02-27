import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map extends StatefulWidget {
  @override
  MapState createState() => MapState();
}

class MapState extends State<Map> {
  GoogleMapController mapController;

  static final LatLng _center = const LatLng(29.656388, -95.3585341);
  double zoom = 9.0;
  final Set<Marker> mapMarkers = new Set();
  LatLng lastMapPos = _center;
  MapType currentMapType = MapType.normal;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    _onAddMarkerButtonPressed();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Electoral College",
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0), // here the desired height
          child: AppBar(
            centerTitle: true,
            title: Text("Polls and Other Locations"),
            backgroundColor: Colors.transparent,
            flexibleSpace: Image(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
            ),
         ),
        ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: zoom,
            ),
            mapType: currentMapType,
            markers: mapMarkers,
            onCameraMove: _onCameraMove,
            scrollGesturesEnabled: true,
          ),
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: <Widget> [
                    FloatingActionButton(
                      onPressed: _onMapTypeButtonPressed,
                      backgroundColor: Colors.blue,
                      child: new Icon(mapTypeIcon(currentMapType)),
                    ),
                    SizedBox(width: 20.0),
                    FloatingActionButton(
                      onPressed: _zoomIn,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      backgroundColor: Colors.blue,
                      child: new Icon(Icons.add_circle),
                    ),
                    SizedBox(width: 20.0),
                    FloatingActionButton(
                      onPressed: _zoomOut,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      backgroundColor: Colors.blue,
                      child: new Icon(Icons.remove_circle),
                    ),
                    SizedBox(width: 20.0),
                  ],
                ),
              ),
            ),
          ]
        )
      )
    );
  } 

  void _onAddMarkerButtonPressed() {
    // TO-DO
  }

  void _zoomIn(){
    mapController.animateCamera(
      CameraUpdate.zoomIn(),
    );
  }
  void _zoomOut(){
    mapController.animateCamera(
      CameraUpdate.zoomOut(),
    );
  }
  void _onMapTypeButtonPressed(){
    setState((){
      if(currentMapType == MapType.normal)
        currentMapType = MapType.satellite;
      else
        currentMapType = MapType.normal;
      }
    );
  }

  void _onCameraMove(CameraPosition position){
    lastMapPos = position.target;
  }

  IconData mapTypeIcon(MapType maptype){
    if(maptype == MapType.normal){
      return Icons.landscape;
    }
    return Icons.map;
  }
}