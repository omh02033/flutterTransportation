import 'package:flutter/material.dart';
import 'package:flutter_map_directions/controllers/home_controller.dart';
import 'package:flutter_map_directions/screens/main_screen.dart';
import 'package:flutter_map_directions/screens/search_screen.dart';
import 'package:flutter_map_directions/themes/color_theme.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = [
    Main(),
    SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      builder: (controller) => Scaffold(
        body: pages[HomeScreenController.to.selectNavigationBarIdx],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (idx) => HomeScreenController.to.changeIdx(idx),
          selectedItemColor: magenta,
          unselectedItemColor: disabled,
          showUnselectedLabels: true,
          currentIndex: HomeScreenController.to.selectNavigationBarIdx,
          unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w700
          ),
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w700
          ),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: '지도',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '검색',
            ),
          ],
        ),
      ),
    );
  }
}