

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenThree extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ScreenThree();
  }

}

class _ScreenThree extends State <ScreenThree>{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () => Navigator.pushNamed(context, "/screen-4"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: new Color(0xff622f74),
                  gradient: LinearGradient(
                      colors: [new Color(0xff6dd5ed),
                        new Color(0xff2193b)]
                  )
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 75.0,
                  child: Icon(
                    Icons.email,
                    color: new Color(0xff2193b0),
                    size: 50.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                ),
                Text('Screen Three',
                  style: TextStyle(
                      color:Colors.white,
                      fontSize: 26.0),)

              ],
            )
          ],
        )

    );
  }
}