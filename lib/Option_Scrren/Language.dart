import 'dart:math';

import 'package:flutter/material.dart';

class Language_scrren extends StatefulWidget {
  const Language_scrren({Key? key}) : super(key: key);

  @override
  State<Language_scrren> createState() => _Language_scrrenState();
}

class _Language_scrrenState extends State<Language_scrren> {

  List language=["","","","",""];
  List sel=[false,false,false,false,false];
  bool a = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Known Language"),
        actions: [
          PopupMenuButton(itemBuilder: (context) => const [
            PopupMenuItem(child: Text("Account")),
            PopupMenuItem(child: Text("Settings")),
            PopupMenuItem(child: Text("Profile")),
            PopupMenuItem(child: Text("Help")),
            PopupMenuItem(child: Text("Log out")),
          ],)
        ],
      ),
      body: Column(
        children: [
          ExpansionTile(
            leading: Icon(Icons.person,color: Colors.pink,),
            title: Text("Known Language",style: TextStyle(color: Colors.pink),),
            trailing: Icon(Icons.edit,color: Colors.pink,),
            collapsedBackgroundColor: Colors.pink.shade100,
            children: [
              //1
              CheckboxListTile(value: sel[0],
                activeColor: Colors.pink,
                onChanged: (value){
                  setState(() {
                    sel[0]=value!;
                  });
                },
                title: Text("Gujarati"),),
              //2
              CheckboxListTile(value: sel[1],
                activeColor: Colors.pink,
                onChanged: (value){
                  setState(() {
                    sel[1]=value!;
                  });
                },
                title: Text("Hindi"),),
              //3
              CheckboxListTile(value: sel[2],
                activeColor: Colors.pink,
                onChanged: (value){
                  setState(() {
                    sel[2]=value!;
                  });
                },
                title: Text("English"),),
              //4
              CheckboxListTile(value: sel[3],
                activeColor: Colors.pink,
                onChanged: (value){
                  setState(() {
                    sel[3]=value!;
                  });
                },
                title: Text("Tamil"),),
              //5
              CheckboxListTile(value: sel[4],
                activeColor: Colors.pink,
                onChanged: (value){
                  setState(() {
                    sel[4]=value!;
                  });
                },
                title: Text("Marathi"),),
            ],
          ),
        ],
      ),
    );
  }
}
