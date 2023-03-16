import 'package:flutter/material.dart';

class Expirence_scrren extends StatefulWidget {
  const Expirence_scrren({Key? key}) : super(key: key);

  @override
  State<Expirence_scrren> createState() => _Expirence_scrrenState();
}

class _Expirence_scrrenState extends State<Expirence_scrren> {

  List exList=["1 Year","2 Year","3 Year","4 Year","5 Year"];
  String? a;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Job Expirence"),
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
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Job Expirence"),
            trailing: Icon(Icons.edit),
            tileColor: Colors.pink.shade200,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(items: exList.map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(),
                value:a ,
                hint: Center(child: Text("----- Select -----",style: TextStyle(fontSize: 18,color: Colors.pink.shade200),)),
                isExpanded: true,
                onChanged: (value){
                  setState(() {
                    a=value as String;
                  });
                }),
          ),
        ],
      ),
    );
  }
}
