import 'dart:convert';
import 'data/error.dart';
import 'data/place_response.dart';
import 'data/result.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_webservice/places.dart';


class PlacesSearchMap extends StatefulWidget {
  final String keyword;
  PlacesSearchMap(this.keyword);

  @override
  State<PlacesSearchMap> createState() {
    return _PlacesSearchMapSample();
  }
}

class _PlacesSearchMapSample extends State<PlacesSearchMap> {
  static const String _API_KEY = 'APIKEYHERE';
  GoogleMapsPlaces _places = GoogleMapsPlaces(apiKey: _API_KEY);

  static double latitude = 29.656388;
  static double longitude = -95.3585341;
  static const String baseUrl =
      "https://maps.googleapis.com/maps/api/place/nearbysearch/json";

  List<Marker> markers = <Marker>[];
  Error error;
  List<Result> places;
  bool searching = true;
  String keyword;

  GoogleMapController _controller;
  MapType currentMapType = MapType.normal;


  void _onMapCreated(GoogleMapController controller) {
    _controller = controller;
  }

  static final CameraPosition houston = CameraPosition(
    target: LatLng(latitude, longitude),
    zoom: 8,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[600],
        title: ButtonTheme(
          minWidth: 225.0,
          height: 30.0,
          child: FlatButton(
            textColor: Colors.white,
            color: Colors.blue[400],
            onPressed: () async {
              // show input autocomplete with selected mode
              // then get the Prediction selected
              Prediction p = await PlacesAutocomplete.show(
                  context: context, apiKey: _API_KEY);
              displayPrediction(p);
            },
            child: Text('Find address', textScaleFactor: 1.25),
          ),
        ),
        actions: <Widget>[
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                    icon: Icon(Icons.zoom_out),
                    tooltip: 'Zoom out',
                    onPressed: () {
                      _controller.moveCamera(
                        CameraUpdate.zoomOut(),
                      );
                    });
              },
            ),
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                    icon: Icon(Icons.zoom_in),
                    tooltip: 'Zoom in',
                    onPressed: () {
                      _controller.moveCamera(
                        CameraUpdate.zoomIn(),
                      );
                    });
              },
            ),
            Builder(
              builder: (BuildContext context) {
                return IconButton(
                    icon: Icon(Icons.landscape),
                    tooltip: 'Change view',
                    onPressed: _onMapTypeButtonPressed,
                );
              }
            ),
          ],
        ),
      body: GoogleMap(
        onCameraMove: (object) {
          latitude = object.target.latitude;
          longitude = object.target.longitude;
        },
        mapType: currentMapType,
        initialCameraPosition: houston,
        onMapCreated: _onMapCreated,
        markers: Set<Marker>.of(markers),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          searchNearby(latitude, longitude);
        },
        label: Text('Offices Nearby'),
        icon: Icon(Icons.place),
      ),
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

  IconData mapTypeIcon(MapType maptype){
    if(maptype == MapType.normal){
      return Icons.landscape;
    }
    return Icons.map;
  }

  Future<Null> displayPrediction(Prediction p) async {
    if (p != null) {
      print("DISPLYING PREDICTION");
      PlacesDetailsResponse detail =
      await _places.getDetailsByPlaceId(p.placeId);

      print("CLCULATING LL");
      var placeId = p.placeId;
      double lat = detail.result.geometry.location.lat;
      double lng = detail.result.geometry.location.lng;

      var address = await Geocoder.local.findAddressesFromQuery(p.description);

      print("PRINTING");
      _controller.animateCamera(
        CameraUpdate.newCameraPosition(
        CameraPosition(
            target: LatLng(lat, lng), zoom: 8.0),
        ),
      );
      latitude = lat;
      longitude = lng;
      searchNearby(lat, lng);
    }
  }

  void searchNearby(double latitude, double longitude) async {
    setState(() {
      markers.clear();
    });
    String url =
        '$baseUrl?key=$_API_KEY&location=$latitude,$longitude&radius=20000&keyword=${widget.keyword}';
    print(url);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      _handleResponse(data);
    } else {
      throw Exception('An error occurred getting places nearby');
    }

    // make sure to hide searching
    setState(() {
      searching = false;
    });
  }

  void _handleResponse(data){
    // bad api key or otherwise
      if (data['status'] == "REQUEST_DENIED") {
        setState(() {
          error = Error.fromJson(data);
        });
        // success
      } else if (data['status'] == "OK") {
        print("Success");
        setState(() {
          places = PlaceResponse.parseResults(data['results']);
          for (int i = 0; i < places.length; i++) {
            markers.add(
              Marker(
                markerId: MarkerId(places[i].placeId),
                position: LatLng(places[i].geometry.location.lat,
                    places[i].geometry.location.long),
                infoWindow: InfoWindow(
                    title: places[i].name, snippet: places[i].vicinity),
                onTap: () {},
              ),
            );
          }
        });
      } else {
        print(data);
      }
  }
}
