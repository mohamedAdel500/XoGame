import 'package:flutter/material.dart';

class XOButton extends StatelessWidget {
  String buttonText = '';
  int position;
  Function function;
  XOButton(this.buttonText,this.position,this.function);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.all(2),
          child: ElevatedButton(onPressed: ()=>{
            function(position)
          }, child: Text(buttonText, style: TextStyle(fontSize: 32),))),
    );
  }
}
