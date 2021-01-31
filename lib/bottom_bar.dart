import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio_lux/my_flutter_app_icons.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentpage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return FancyBottomNavigation(
      circleColor: Color.fromRGBO(255,139,139,1),
      textColor: Color.fromRGBO(32,14,50,1),
      inactiveIconColor: Color.fromRGBO(32,14,50,1),
      tabs: [
        TabData(
          iconData: MyFlutterApp.play,
          title: "Музика",
        ),
        TabData(
          iconData: MyFlutterApp.category,
          title: "Категорії",
        ),
        TabData(
          iconData: MyFlutterApp.games,
          title: "Ігри",
        ),
        TabData(
          iconData: MyFlutterApp.bag,
          title: "Корзина",
        ),
      ],
      initialSelection: 0,
      key: bottomNavigationKey,
      onTabChangedListener: (position) {
        setState(() {
          currentpage = position;
        });
      },
    );
  }
}
