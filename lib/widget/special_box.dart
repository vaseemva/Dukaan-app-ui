import 'package:flutter/material.dart';

Widget specialBox({
  required IconData icon,
  required String text,
  required Color color,
  Container? trailing,
}) {
  return Container(
    //design of container
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7), color: Colors.white),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Design Of Icons
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: color,
                ),
                height: 40,
                width: 40,
                child: Icon(
                  icon,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              (trailing == null) ? const SizedBox() : trailing,
            ],
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    ),
  );
}