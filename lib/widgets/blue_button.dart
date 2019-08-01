import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  String msg;
  Function onPressedButton;
  Color color;
  BlueButton(this.msg, {this.onPressedButton,this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: color,
      child: Text(
        msg,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
      onPressed: onPressedButton,
    );
  }
}
