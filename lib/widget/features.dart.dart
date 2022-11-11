import 'package:flutter/material.dart';

Widget features(
    {required IconData icon, required String title, required String Subtitle}) {
  return ListTile(
    leading: Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.blue, width: 2)),
      child: CircleAvatar(
        foregroundColor: Colors.blue,
        backgroundColor: Colors.white,
        radius: 30,
        child: Icon(icon),
      ),
    ),
    title: Text(
      title,
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    ),
    subtitle: Text(
      Subtitle,
      style: TextStyle(fontSize: 12),
    ),
  );
}