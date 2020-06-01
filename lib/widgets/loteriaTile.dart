import 'package:flutter/material.dart';

class LoteriaTile extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final String screen;
  final int amount;
  final int size;

  const LoteriaTile(
      {this.title, this.backgroundColor, this.screen, this.size, this.amount});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          this.screen,
          arguments: {
            "title": this.title,
            "color": this.backgroundColor,
            "amount": this.amount,
            "size": this.size,
          },
        );
      },
      child: Container(
        width: 300,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: <Widget>[
              Text(
                this.title,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: this.backgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
