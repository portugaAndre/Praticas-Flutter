import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  int numeroVezes = 0;
  String tipoNumero = "é par";
  void cliqueDoBotao() {
    numeroVezes = numeroVezes + 1;
    if (numeroVezes % 2 == 0) {
      tipoNumero = "é par";
    } else {
      tipoNumero = "é impar";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Página Inicial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Número de vezes em que o botão foi pressionado: $numeroVezes.\nEsse numero $tipoNumero"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(cliqueDoBotao);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
