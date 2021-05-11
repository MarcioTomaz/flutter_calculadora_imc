import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            Icons.person_outline_sharp,
            size: 120,
            color: Colors.green,
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: "Peso em (Kg)",
                labelStyle: TextStyle(color: Colors.green)),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.green, fontSize: 25),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                labelText: "Altura em (cm)",
                labelStyle: TextStyle(color: Colors.green)),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.green, fontSize: 25),
          )
        ],
      ),
    );
  }
}
