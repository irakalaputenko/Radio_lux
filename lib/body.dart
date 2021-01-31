import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}
bool isButtonPressed = false;

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 130.0,
            child: Container(
              child: Image.asset('assets/background.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
                  child: Hero(
                    tag: "album",
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        "assets/image7.png",
                        fit: BoxFit.cover,
                        height: 250,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Надя Іванова",
                        style: TextStyle(color: Color.fromRGBO(215,94,112,1),
                          fontFamily: 'Geometria', fontSize: 15.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 0.0),
                        child: Text(
                          "Nathan Goshen",
                          style: TextStyle(
                              color: Color.fromRGBO(32,14,50,1),
                              fontFamily: 'Geometria', fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Thinking About It (Let It Go) (KVR Remix)",
                          style: TextStyle(
                              color: Color.fromRGBO(32,14,50,1),
                              fontFamily: 'Geometria', fontSize: 13.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: FlatButton(

                          onPressed: (){
                            setState(() {
                              isButtonPressed =!isButtonPressed;
                            });
                          },
                          child: isButtonPressed ? Image.asset("assets/btn.png") : Image.asset("assets/Ellipse.png"),
                                                  ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(height: 79.0,
              decoration:BoxDecoration(
                color: Color.fromRGBO(255,239,207,1),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0))
              ) ,
              
              child: Center(
                child: Text('Ку-ку! У тебе 3 нових меседжа', style: TextStyle(color: Color.fromRGBO(32,14,50,1),
                    fontFamily: 'Geometria', fontSize: 13.0),),
              ),
              ),
          ),
        ],
      ),
    );
  }
}
