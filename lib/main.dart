///
/// Código escrito por Erisvaldo Correia
/// Treinamento Básico em Flutter - 2020
/// Curso - Flutter Fundamentos TreinaWeb
///

import 'package:flutter/material.dart';

/// Inicialização do Aplicativo.
void main() => runApp(FlutterTreinawebApp());

/// Classe principal da Aplicação
class FlutterTreinawebApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter TreinaWeb",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }

}

/// Classe da Página Home
class HomePage extends StatelessWidget {

  double num1 = 0.0;
  double num2 = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CALCULUS'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.clear_all),
            onPressed: () {
              showDialog(
                context: context,
                child: AlertDialog(
                  title: Text('Calculus'),
                  content: Text(
                    'Aplicação Codificada por Erisvaldo Correia em 2020'
                        ' no treinamento realizado pela TreinaWeb'
                  ),
                ),
              );
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Prineiro Numero',
                labelStyle: TextStyle(fontSize: 22),
              ),
              keyboardType: TextInputType.number,
              onChanged: (valor) {
                try {
                  num1 = double.parse(valor);
                } catch (ex) {
                  num1 = 0.0;
                }
              },
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Prineiro Numero',
                labelStyle: TextStyle(fontSize: 22),
              ),
              keyboardType: TextInputType.number,
              onChanged: (valor) {
                try {
                  num2 = double.parse(valor);
                } catch (ex) {
                  num2 = 0.0;
                }
              },
            ),
            RaisedButton(
              child: Text(
                  'Calcular', style: TextStyle(fontSize: 20),
              ),
              color: Colors.green,
              padding: EdgeInsets.all(15.0),
              onPressed: (){
                double add = num1 + num2;
                double sub = num1 - num2;
                double div = num1 / num2;
                double mult = num1 * num2;
                showDialog(
                  context: context,
                  child: AlertDialog(
                    title: Text('Resultados'),
                    content: Text(
                      "Adição = $add \n"
                          "Subtração = $sub \n"
                          "Divisão = $div \n"
                          "Multiplicação = $mult \n"
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

}
