import 'dart:math';

import 'package:flutter/material.dart';

class Home_scrren extends StatefulWidget {
  const Home_scrren({Key? key}) : super(key: key);

  @override
  State<Home_scrren> createState() => _Home_scrrenState();
}

class _Home_scrrenState extends State<Home_scrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Resume Builder App"),
        actions: [
          PopupMenuButton(itemBuilder: (context) => [
            PopupMenuItem(child: Text("Account")),
            PopupMenuItem(child: Text("Settings")),
            PopupMenuItem(child: Text("Profile")),
            PopupMenuItem(child: Text("Help")),
            PopupMenuItem(child: Text("Log out")),
          ],)
        ],
      ),
      body: Center(
        child: InkWell(onTap: (){
          setState(() {
            Navigator.pushNamed(context, "Menu");
          });
        },
          child: Container(
            height: 70,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.pinkAccent.shade100,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.pink,width: 2),
            ),
            alignment: Alignment.center,
            child: Text("Start Resume",style: TextStyle(fontSize: 22,color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
