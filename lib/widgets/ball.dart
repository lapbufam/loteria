import 'package:flutter/material.dart';

class Ball extends StatelessWidget {
  final String number;
  final Color backgroundColor;

  const Ball({Key key, this.number, this.backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(100.0),
        ),
        color: this.backgroundColor,
      ),
      child: Center(
        child: Text(
          this.number,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
