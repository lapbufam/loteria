import 'package:flutter/material.dart';
import 'package:loteria/utils.dart';
import 'package:loteria/widgets/numbersRow.dart';

class Jogo extends StatefulWidget {
  static String routeName = "/jogo";

  const Jogo({Key key}) : super(key: key);

  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  List<int> selectedNumbers;

  @override
  Widget build(BuildContext context) {
    Map<String, Object> args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args["title"]),
        backgroundColor: args["color"],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              selectedNumbers != null
                  ? NumbersRow(numbers: selectedNumbers, args: args)
                  : Text("Aperte o botão abaixo para selecionar os números!"),
              RaisedButton(
                child: Text(
                  "Selecionar dezenas",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    selectedNumbers = selecionarDezenas(
                      args["amount"],
                      args["size"],
                    );
                  });
                },
                color: args["color"],
              )
            ],
          ),
        ),
      ),
    );
  }
}
