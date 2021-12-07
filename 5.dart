import 'package:flutter/material.dart';

void main() {
  runApp(
    Column(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: const <Widget>[
        Expanded(
          child: FittedBox(
            fit: BoxFit.fitHeight,
            child: FlutterLogo(),
          ),
        ),
        Expanded(
          child: Image(
            image: NetworkImage(
              'https://picsum.photos/250?image=10',
            ),
          ),
        ),
        Text(
          'Google Flutter.',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
          ),
        ),
      ],
    ),
  );
}
