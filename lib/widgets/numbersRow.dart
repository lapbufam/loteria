import 'package:flutter/material.dart';

import 'ball.dart';

class NumbersRow extends StatelessWidget {
  const NumbersRow({
    Key key,
    @required this.numbers,
    @required this.args,
  }) : super(key: key);

  final List<int> numbers;
  final Map<String, Object> args;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: numbers
          .map(
            (number) => Ball(
              number: number.toString(),
              backgroundColor: args["color"],
            ),
          )
          .toList(),
    );
  }
}
