import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio_lux/body.dart';
import 'package:radio_lux/bottom_bar.dart';
import 'package:radio_lux/app_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 242, 242, 1),
      appBar: CustomAppBar(),
      body: Body(),
      bottomNavigationBar: BottomBar(),
    );
  }
}
