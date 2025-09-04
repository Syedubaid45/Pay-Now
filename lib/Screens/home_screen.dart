import 'package:pay_now/Components/latest_transfer.dart';
import 'package:pay_now/Components/main_menu.dart';
import 'package:pay_now/Components/recent_transfer.dart';
import 'package:pay_now/Components/total_balance.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF662AB2),
      body: Stack(
        children: [
          totalBalance(),
          Positioned(
            top: 50,
            child: Image.asset('assets/images/Ellipse14.png'),
          ),
          Positioned(
            top: 40,
            right: 0,
            child: Image.asset(
              'assets/images/Ellipse15.png',
              height: 200,
            ),
          ),
          Positioned(
            top: 150,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Menu
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: mainMenu(context),
                  ),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Send Again",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextButton(
                                  child: const Text("See All"),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 150,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return recentTransfer(
                                    "User $index",
                                    'assets/images/user.jpg',
                                  );
                                },
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Latest Transaction",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextButton(
                                  child: const Text("See All"),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            latestTransfer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurpleAccent,
        shape: const CircleBorder(),
        elevation: 12,
        onPressed: () {},
        child: const Icon(
          Icons.qr_code,
          size: 34,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          elevation: 6,
          color: Colors.white,
          child: SizedBox(
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _navItem(Icons.home, "Home", 0),
                _navItem(Icons.send, "Transfer", 1),
                const SizedBox(width: 48),
                _navItem(Icons.history, "History", 2),
                _navItem(Icons.person, "Profile", 3),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _navItem(IconData icon, String label, int index) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.deepPurpleAccent),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: Colors.deepPurpleAccent),
        ),
      ],
    );
  }
}
