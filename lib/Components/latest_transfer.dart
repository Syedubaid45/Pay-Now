import 'package:flutter/material.dart';

Widget latestTransfer() {
  return   ListView(
                          
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          ListTile(
                          
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/user.jpg'),
                            ),
                            title: Text("Transfer",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                            subtitle: Text("Yesteday at 3:00 PM"),
                            trailing: Text("-\$7000", style: TextStyle(color: Colors.red, fontSize: 16)),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/user.jpg'),
                            ),
                            title: Text("Top Up",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black)),
                            subtitle: Text("May 16, 2025 at 17:00 PM"),
                            trailing: Text("+\$100", style: TextStyle(color: Colors.green, fontSize: 16)),
                          ),
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/user.jpg'),
                            ),
                            title: Text("Internet",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black)),
                            subtitle: Text("May 16, 2025 at 17:00 PM"),
                            trailing: Text("-\$641", style: TextStyle(color: Colors.red, fontSize: 16)),
                          ),
                                             
                        ],
                          );
  
  
  }