import 'package:pay_now/Components/total_balance.dart';
import 'package:pay_now/Screens/transfer_reciept.dart';
import 'package:flutter/material.dart';

class TransferToFriend extends StatelessWidget {
  TransferToFriend({super.key});

  TextEditingController amountController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF662AB2),
      body: Stack(
        children: [
          totalBalance(),
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
              height: MediaQuery.of(context).size.height * 0.8,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Enter Phone Number",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Set Amount",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: amountController,
                      decoration: InputDecoration(
                        labelText: "Amount",
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.money),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TransferReciept(
                                      amountController: amountController,
                                      numberController: numberController,
                                    )));
                      },
                      child: Text(
                        "Proceed to Transfer",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF662AB2),
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
