import 'package:pay_now/Screens/transfer_screen.dart';
import 'package:flutter/material.dart';

Widget mainMenu(context) {
  return Padding(
    padding: const EdgeInsets.only(top: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            InkWell(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => TransferScreen()),
              ),
              child: Icon(
                Icons.transfer_within_a_station,
                color: Color(0xFF662AB2),
                size: 30,
              ),
            ),
            Text(
              "Transfer",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
        Column(
          children: [
            InkWell(
              child: Icon(
                Icons.add_card_rounded,
                color: Color(0xFF662AB2),
                size: 30,
              ),
            ),
            Text(
              "Top Up",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
        Column(
          children: [
            InkWell(
              child: Icon(
                Icons.wallet_membership_sharp,
                color: Color(0xFF662AB2),
                size: 30,
              ),
            ),
            Text(
              "Withrawal",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
        Column(
          children: [
            InkWell(
              child: Icon(
                Icons.more_horiz,
                color: Color(0xFF662AB2),
                size: 30,
              ),
            ),
            Text(
              "More",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        )
      ],
    ),
  );
}
