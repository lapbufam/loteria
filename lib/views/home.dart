import 'package:flutter/material.dart';
import 'package:loteria/views/mega.dart';
import 'package:loteria/views/quina.dart';

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
                screen: MegaSena.routeName,
              ),
              SizedBox(height: 30.0),
              LoteriaTile(
                title: "Quina",
                backgroundColor: Colors.blue,
                screen: Quina.routeName,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoteriaTile extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final String screen;

  const LoteriaTile({
    this.title,
    this.backgroundColor,
    this.screen,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          this.screen,
          arguments: {"title": this.title, "color": this.backgroundColor},
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
