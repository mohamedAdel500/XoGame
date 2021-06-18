import 'package:flutter/material.dart';
import 'package:flutter_projects/XOBoard.dart';
import 'package:flutter_projects/XOButton.dart';

void main() {
  runApp(XOGame());
}

class XOGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'home':(context)=>XOBoardWidget(),
      },
      home: Scaffold(
        appBar: AppBar(
          title: Text('XO Game'),
        ),
        body:XOBoardWidget(),
      ),
    );
  }
}



