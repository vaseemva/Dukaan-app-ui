import 'package:flutter/material.dart';

Widget itemdetails({required String title1, required String title2}) {
  return Container(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title1),
            SizedBox(width: 125),
            Text(title2),
          ],
        ),
      ],
    ),
  );
}