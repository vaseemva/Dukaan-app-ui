
import 'package:flutter/material.dart';

Widget additionalinfo() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: const [
      Divider(thickness: 1.5),
      SizedBox(height: 8),
      Text(
        'ADDITIONAL INFORMATION',
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
      ),
      SizedBox(height: 8),
      Text(
        'state',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text('Karnataka\n'),
      Text(
        'Email',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      Text('greeniceaqua@gmail.com'),
    ],
  );
}