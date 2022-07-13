import 'package:flutter/material.dart';
import 'package:flutter_map_directions/binding/home_binding.dart';
import 'package:flutter_map_directions/screens/home.dart';
import 'package:get/get.dart';
import 'package:flutter_map_directions/themes/color_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'tus map',
      theme: ThemeData(scaffoldBackgroundColor: backgroundColor),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => Home(), binding: HomePageBinding()),
      ],
    );
  }
}
