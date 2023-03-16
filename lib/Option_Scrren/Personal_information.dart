import 'dart:math';

import 'package:flutter/material.dart';

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  State<Personal> createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  bool a = false, b = true;
  List city = [
    "Surat",
    "Ahmedabad",
    "Vadodara",
    "Amorally",
    "Baroda",
    "gandhi nagar"
  ];

  String Gender="Male";
  String con="India";
  String? c;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Personal Information"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => const [
              PopupMenuItem(child: Text("Account")),
              PopupMenuItem(child: Text("Settings")),
              PopupMenuItem(child: Text("Profile")),
              PopupMenuItem(child: Text("Help")),
              PopupMenuItem(child: Text("Log out")),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ExpansionTile(
              leading: Icon(
                Icons.person,
                color: Colors.pink,
              ),
              title: Text(
                "Personal information",
                style: TextStyle(color: Colors.pink),
              ),
              trailing: Icon(
                Icons.edit,
                color: Colors.pink,
              ),
              collapsedBackgroundColor: Colors.pink.shade100,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      //first
                      TextField(
                        style: TextStyle(fontSize: 18, color: Colors.pink),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.pink,
                          )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink)),
                          label: Text(
                            "First Name",
                            style: TextStyle(color: Colors.pink),
                          ),
                          suffixIcon: Icon(
                            Icons.account_box_outlined,
                            size: 30,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                      //second
                      SizedBox(height: 10),
                      TextField(
                        style: TextStyle(fontSize: 18, color: Colors.pink),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.pink,
                          )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink)),
                          label: Text(
                            "Last Name",
                            style: TextStyle(color: Colors.pink),
                          ),
                          suffixIcon: Icon(
                            Icons.account_box_outlined,
                            size: 30,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                      //address
                      SizedBox(height: 10),
                      TextField(
                        style: TextStyle(fontSize: 18, color: Colors.pink),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.pink,
                          )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink)),
                          label: Text(
                            "Address",
                            style: TextStyle(color: Colors.pink),
                          ),
                          suffixIcon: Icon(
                            Icons.home,
                            size: 30,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                      //contact
                      SizedBox(height: 10),
                      TextField(
                        style: TextStyle(fontSize: 18, color: Colors.pink),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.pink,
                          )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink)),
                          label: Text(
                            "Contact",
                            style: TextStyle(color: Colors.pink),
                          ),
                          suffixIcon: Icon(
                            Icons.call,
                            size: 30,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                      //E mail
                      SizedBox(height: 10),
                      TextField(
                        style: TextStyle(fontSize: 18, color: Colors.pink),
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.pink,
                          )),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink)),
                          label: Text(
                            "E-Mail",
                            style: TextStyle(color: Colors.pink),
                          ),
                          suffixIcon: Icon(
                            Icons.mail,
                            size: 30,
                            color: Colors.pink,
                          ),
                        ),
                      ),
                      //Gender
                      SizedBox(height: 10),
                      ExpansionTile(title: Text("Select Gender"),
                        collapsedIconColor: Colors.pink,
                        collapsedBackgroundColor: Colors.pink.shade100,
                        children: [
                          RadioListTile(value: "Male", groupValue: Gender, onChanged: (value) {
                        setState(() {
                          Gender=value!;
                        });
                      },
                        activeColor: Colors.pink,
                        title: Text("Male"),
                      ),
                        RadioListTile(value: "Female", groupValue: Gender, onChanged: (value) {
                          setState(() {
                            Gender=value!;
                          });
                        },
                          activeColor: Colors.pink,
                          title: Text("Female"),
                        ),
                        RadioListTile(value: "Other", groupValue: Gender, onChanged: (value) {
                          setState(() {
                            Gender=value!;
                          });
                        },
                          activeColor: Colors.pink,
                          title: Text("Other"),
                        ),],),
                      //Contre
                      SizedBox(height: 10),
                      ExpansionTile(title: Text("Select Country"),
                        collapsedIconColor: Colors.pink,
                        collapsedBackgroundColor: Colors.pink.shade100,
                        children: [
                          RadioListTile(value: "India", groupValue: con, onChanged: (value) {
                            setState(() {
                              con=value!;
                            });
                          },
                            activeColor: Colors.pink,
                            title: Text("India"),
                          ),
                          RadioListTile(value: "America", groupValue: con, onChanged: (value) {
                            setState(() {
                              con=value!;
                            });
                          },
                            activeColor: Colors.pink,
                            title: Text("America"),
                          ),
                          RadioListTile(value: "Russia", groupValue: con, onChanged: (value) {
                            setState(() {
                              con=value!;
                            });
                          },
                            activeColor: Colors.pink,
                            title: Text("Russia"),
                          ),],),
                      //city
                      SizedBox(height: 10),
                      Text(
                        "Enter The City",
                        style: TextStyle(fontSize: 20, color: Colors.pink),
                      ),
                      SizedBox(
                        height: 60,
                        child: DropdownButton(
                          items: city
                              .map((e) => DropdownMenuItem(
                                    child: Text("$e"),
                                    value: e,
                                  ))
                              .toList(),
                          value: c,
                          hint: Center(
                              child: Text(
                            "----- Select -----",
                            style: TextStyle(
                                color: Colors.pink.shade200, fontSize: 18),
                          )),
                          isExpanded: true,
                          focusColor: Colors.pink,
                          onChanged: (value) {
                            setState(() {
                              c = value as String;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
