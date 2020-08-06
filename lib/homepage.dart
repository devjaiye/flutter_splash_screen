


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _HomePage();
  }
}

class _HomePage extends State<Homepage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.teal,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                  child: Text("Welcome to Home Page",
                    style: TextStyle(fontSize: 30.0,
                    color: Colors.white),)
              ),
            ],
          )
        ],
      )
    );
  }

}