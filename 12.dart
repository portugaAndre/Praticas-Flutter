import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
// Inicie o aplicativo com a rota nomeada "/".
// Neste exemplo, o aplicativo inica no widget PrimeiraTela.
        initialRoute: '/',
        routes: {
// Quando navegar pela rota nomeada "/", construa o widget PrimeiraTela.
          '/': (_) => PrimeiraTela(), //_ = context
// Quando navegar pela rota nomeada "/segunda", construa o widget SegundaTela.
          '/segunda': (_) => SegundaTela(), //_ = context
        },
      ),
    );

class PrimeiraTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primeira Tela'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Ir para a Segunda Tela'),
          onPressed: () {
// Navegar para a segunda tela usando a rota nomeada.
            Navigator.pushNamed(context, '/segunda');
          },
        ),
      ),
    );
  }
}

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Tela"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                '2',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              padding: EdgeInsets.all(40),
              margin: EdgeInsets.all(25),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  child: Icon(Icons.navigate_before),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                ElevatedButton(
                  child: Icon(Icons.navigate_next),
                  onPressed: () {
                    Navigator.pushNamed(context, '/terceira');
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
