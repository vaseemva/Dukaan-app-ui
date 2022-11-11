import 'package:flutter/material.dart';

Widget expansionTile({required String title, required String subtitle}) {
  return ExpansionTile(
    trailing: Icon(Icons.add),
    title: Text(
      title,
      style: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
    ),
    children: [
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(subtitle),
          ),
        ],
      )
    ],
  );
}