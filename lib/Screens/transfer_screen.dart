import 'package:pay_now/Components/latest_transfer.dart';
import 'package:pay_now/Screens/transfer_to_friend.dart';
import 'package:flutter/material.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF662AB2),
        body: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  "Transfer",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Icon(Icons.report_problem, color: Colors.white),
              ],
            ),
          ),
          Positioned(
            top: 50,
            child: Image.asset(
              'assets/images/Ellipse14.png',
            ),
          ),
          Positioned(
            top: 40,
            right: 0,
            child: Image.asset(
              'assets/images/Ellipse15.png',
              height: 200,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 120,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueGrey[50],
                          ),
                          margin: EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.people_alt,
                                      size: 40, color: Color(0xFF662AB2)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                TransferToFriend()));
                                  },
                                ),
                                Text("Transfer to friend",
                                    style: TextStyle(
                                      fontSize: 12,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 120,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueGrey[50],
                          ),
                          margin: EdgeInsets.all(10),
                          child: Center(
                            child: Column(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.account_balance_wallet,
                                      size: 40, color: Color(0xFF662AB2)),
                                  onPressed: () {},
                                ),
                                Text("Transfer to Bank",
                                    style: TextStyle(
                                      fontSize: 12,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Latest Transfers",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))),
                    SizedBox(height: 20),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return latestTransfer();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]));
  }
}
