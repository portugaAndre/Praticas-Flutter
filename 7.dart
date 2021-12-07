import 'package:flutter/material.dart';

void main() {
  runApp(
    Container(
      child: Image(
        image: NetworkImage(
            'https://i.picsum.photos/id/37/250/250.jpg?hmac=ZMIo0U9qQ6H3-jXK1khrSHzz-JeUuFQw5Hu0VO8Sdjg'),
        alignment: Alignment.center,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
      width: 23,
      height: 23,
    ),
  );
}
