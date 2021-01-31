import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {

  CustomAppBar({Key key}) : preferredSize = Size.fromHeight(kToolbarHeight), super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  final Size preferredSize;
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
        PopupMenuButton(
          icon: Icon(Icons.more_vert, color: Colors.black,),
          itemBuilder: (BuildContext bc) => [
            PopupMenuItem(child: Text("New Chat"), value: "/newchat"),
            PopupMenuItem(
                child: Text("New Group Chat"), value: "/new-group-chat"),
            PopupMenuItem(child: Text("Settings"), value: "/settings"),
          ],
          onSelected: (route) {
            print(route);
            Navigator.pushNamed(context, route);
          },
        ),
      ],
    );
  }

}
