import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: SizedBox(
        width: 250,
        height: 250,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.purpleAccent,
                    Colors.blueAccent,
                    Colors.purpleAccent,
                  ],
                ),
              ),
            ),
            Container(
              child: Image(
                image: NetworkImage(
                  'https://media2.giphy.com/media/xT0xezQGU5xCDJuCPe/giphy.gif?cid=790b761187bb23791b0bd2949abee1fb5fb16dac5db8ed1a&rid=giphy.gif&ct=g',
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
