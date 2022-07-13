import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  static final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(37.342290, 126.830184),
    zoom: 14.4746,
  );

  late GoogleMapController _googleMapController;
  Marker? _origin;
  Marker? _destination;

  void addMarker(LatLng pos) {
    setState(() {
      if(_origin == null || (_origin != null && _destination != null)) {
        _origin = Marker(
          markerId: MarkerId('origin'),
          infoWindow: InfoWindow(title: 'Origin'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
          position: pos
        );
        _destination = null;
      } else {
        _destination = Marker(
          markerId: MarkerId('destination'),
          infoWindow: InfoWindow(title: 'Destination'),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          position: pos
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        mapType: MapType.normal,
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: (controller) => _googleMapController = controller,
        markers: {
          if(_origin != null) _origin!,
          if(_destination != null) _destination!
        },
        onLongPress: addMarker,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.black,
        onPressed: () => _googleMapController.animateCamera(
          CameraUpdate.newCameraPosition(_initialCameraPosition)
        ),
        child: Icon(Icons.center_focus_strong),
      ),
    );
  }
}