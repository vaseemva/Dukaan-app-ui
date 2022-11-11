import 'package:flutter/material.dart';

Widget PaymentBox(
    {required Color color, required String title, required String price}) {
  return Padding(
    padding: const EdgeInsets.only(top: 4.0),
    child: Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      height: 65,
      width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 17.0, top: 10),
            child: Text(
              title,
              style: const TextStyle(color: Colors.white70, fontSize: 10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17.0, top: 3),
            child: Text(
              '₹ $price',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}