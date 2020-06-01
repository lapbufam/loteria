import 'package:flutter/material.dart';
import 'package:loteria/views/jogo.dart';
import 'package:loteria/widgets/loteriaTile.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              SizedBox(height: 30.0),
              LoteriaTile(
                title: "Mega-Sena",
                backgroundColor: Colors.green,
                screen: Jogo.routeName,
                amount: 6,
                size: 60,
              ),
              SizedBox(height: 30.0),
              LoteriaTile(
                title: "Quina",
                backgroundColor: Colors.blue,
                screen: Jogo.routeName,
                amount: 5,
                size: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
