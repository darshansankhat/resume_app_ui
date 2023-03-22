import 'package:flutter/material.dart';

class Show_scrren extends StatefulWidget {
  const Show_scrren({Key? key}) : super(key: key);

  @override
  State<Show_scrren> createState() => _Show_scrrenState();
}

class _Show_scrrenState extends State<Show_scrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text("Your Resume"),
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
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.black12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomRight: Radius.circular(500)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: CircleAvatar(
                        radius: 50,
                          backgroundImage: AssetImage("assets/Data_image/1.jpg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100,top: 25),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.pink),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 60,
                        width: 200,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.black)),
                        alignment: Alignment.center,
                        child: Text("F name"),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
