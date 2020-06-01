import 'package:flutter/material.dart';
import 'package:loteria/utils.dart';
import 'package:loteria/widgets/numbersRow.dart';

class MegaSena extends StatefulWidget {
  static String routeName = "/mega";

  const MegaSena({Key key}) : super(key: key);

  @override
  _MegaSenaState createState() => _MegaSenaState();
}

class _MegaSenaState extends State<MegaSena> {
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
                    selectedNumbers = selecionarDezenas(6);
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
