import 'package:flutter/material.dart';
import 'package:loteria/views/home.dart';
import 'package:loteria/views/jogo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => MyHomePage(title: "Loterias"),
        Jogo.routeName: (context) => Jogo(),
      },
    );
  }
}
