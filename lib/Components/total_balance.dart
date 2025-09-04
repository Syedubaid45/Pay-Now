import 'package:flutter/material.dart';

Widget totalBalance() {
  return Align(
  alignment: Alignment.topCenter,
  child: Column(
    children: [
      SizedBox(height: 50),
      Text("YOUR BALANCE",style: TextStyle(fontSize: 12 ,color:  Colors.white),),
       Text("\$9152254",style: TextStyle(fontSize: 24 ,fontWeight: FontWeight.bold,color: Colors.white),),
    ],
  ),
);
}