/**
Código escrito por Erisvaldo Correia
Treinamento Básico em Flutter - 2020
Curso - Flutter Fundamentos TreinaWeb
*/

import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Calculus Treinaweb',
    home: FlutterTreinaweb(),
  ));
}

/// Criação da classe estática com Flutter e Dart
class FlutterTreinaweb extends StatelessWidget {

  double numero1 = 0.0;
  double numero2 = 0.0;

  @override
  Widget build(BuildContext context) {

    /// Construção do Primeiro Input
    TextField primeiroInput = new TextField(
      decoration: InputDecoration(
        labelText: 'Primeiro Numero'
      ),
      keyboardType: TextInputType.number,
      onChanged: (valor) {
        try {
          numero1 = double.parse(valor);
        } catch (ex){
          numero1 = 0.0;
        }
      },
    );

    /// Construção do Segundo Input
    TextField segundoInput = new TextField(
      decoration: InputDecoration(
        labelText: 'Segundo Numero'
      ),
      keyboardType: TextInputType.number,
      onChanged: (valor) {
        try {
          numero2 = double.parse(valor);
        } catch (ex) {
          numero2 = 0.0;
        }
      },
    );

    /// Botão para exibir os calculos necessários
    RaisedButton calculus = new RaisedButton(
      color: Colors.orange,
      child: Text('Calcular',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
      ),
      onPressed: (){
        double add = numero1 + numero2;
        double sub = numero1 - numero2;
        double div = numero1 / numero2;
        double mult = numero1 * numero2;
        AlertDialog resultado = new AlertDialog(
          title: Text('Resultados'),
          content: Text(
              "Adição = $add \n\n"
                  "Subtração = $sub \n\n"
                  "Divisão = $div \n\n"
                  "Multiplicação = $mult \n\n"
          ),
        );
        showDialog(
            context: context,
            child: resultado,
        );
      },
    );

    /// Criando o Container hierarquico da aplicação
    Container meuContainer = new Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          primeiroInput,
          segundoInput,
          calculus,
        ],
      ),
    );

    AppBar appbar = new AppBar(
      title: Text('Calculus',
        style: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.orange,
    );

    Scaffold scaffold = new Scaffold(
      appBar: appbar,
      body: meuContainer,
    );

    return scaffold;

  }

}
