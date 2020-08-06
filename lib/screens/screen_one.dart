

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _ScreenOne();
  }

}

class _ScreenOne extends State<ScreenOne>{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () =>
        Navigator.pushNamed(context, "/screen-2"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: new Color(0xff622f74),
                gradient: LinearGradient(
                  colors: [new Color(0xff6dd5ed),
                    new Color(0xff2193b0)],
              )
            ),
          ),
          Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 75.0,
              child: Icon (
               Icons.business_center,
                color: Colors.teal,
                size: 50.0,
              ),

            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0),
            ),
            Text(
              'Screen One',
              style: TextStyle(color: Colors.white, fontSize: 26.0),
            ),
          ],
          )
        ],
      )
    );
  }
}