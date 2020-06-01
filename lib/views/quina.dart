import 'package:flutter/material.dart';

class Quina extends StatelessWidget {
  static String routeName = "/quina";

  @override
  Widget build(BuildContext context) {
    Map<String, Object> args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args["title"]),
        backgroundColor: args["color"],
      ),
      body: Center(
        child: Text("Quina"),
      ),
    );
  }
}
