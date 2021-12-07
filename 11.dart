import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: PrimeiraRota()));

class PrimeiraRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álbum"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: ListView(
          children: [
            TextButton(
              child: Image(
                image: NetworkImage(
                    'https://images.pexels.com/photos/213782/pexels-photo-213782.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                alignment: Alignment.center,
                fit: BoxFit.fitWidth,
                width: 500,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => SegundaRota()),
                );
              },
            ),
            TextButton(
              child: Image.network(
                  'https://images.pexels.com/photos/213781/pexels-photo-213781.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(30.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => imagem2()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Rota"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Descrição do Produto',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 40,
                ),
              ),
              margin: EdgeInsets.all(80),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar para a Primeira Rota'),
            ),
          ],
        ),
      ),
    );
  }
}

class imagem2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Segunda Rota"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                'Descrição de newyork',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 40,
                ),
              ),
              margin: EdgeInsets.all(80),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar para a Primeira Rota'),
            ),
          ],
        ),
      ),
    );
  }
}
