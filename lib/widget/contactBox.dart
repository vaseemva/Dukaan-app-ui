import 'package:flutter/material.dart';

Widget contactBox({required String title, required IconData icon}) {
  return Container(
    height: 70,
    width: 150,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.grey,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(4),
      ),
    ),
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(icon),
        ),
        Text(
          title,
        ),
      ],
    ),
  );
}