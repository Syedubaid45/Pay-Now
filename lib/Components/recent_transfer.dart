 import 'package:flutter/material.dart';

Widget recentTransfer(String name, String imagePath) {
  return Padding(
    padding: const EdgeInsets.all(3),
    child: Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(imagePath),
        ),
        SizedBox(height: 5,),
        Text(name, style: TextStyle(fontSize: 14)),
      ],
    ),
  );
}