import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:radio_lux/Body.dart';
import 'package:radio_lux/BottomBar.dart';

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
      appBar: AppBar(
        elevation: 0.0,
        title: Center(child: Image.asset('assets/logo-lux.png')),
        backgroundColor: Color.fromRGBO(255, 242, 242, 1),
        leading: GestureDetector(
          onTap: () {},
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image.asset('assets/coins.png'),
              ),

              Text(
                '35',
                style: TextStyle(
                  color: Color.fromRGBO(255, 167, 0, 1),
                  fontFamily: 'Geometria',
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Body(),
      bottomNavigationBar: BottomBar(),
    );
  }
}
