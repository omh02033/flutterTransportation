import 'package:flutter/material.dart';
import 'package:flutter_map_directions/.env.dart';
import 'package:flutter_map_directions/services/get_current_location.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('메인 페이지'),
    );
  } 
}