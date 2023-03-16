import 'package:flutter/material.dart';

class Qualification extends StatefulWidget {
  const Qualification({Key? key}) : super(key: key);

  @override
  State<Qualification> createState() => _QualificationState();
}

class _QualificationState extends State<Qualification> {

  List eqList=["B.Com","BBA","BCA","B-tech","Its-cs+","BSC-It","Diploma"];
  String? a;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Education Qualification"),
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
            title: Text("Education Qualification"),
            trailing: Icon(Icons.edit),
            tileColor: Colors.pink.shade200,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton(items: eqList.map((e) => DropdownMenuItem(child: Text("$e"),value: e,)).toList(),
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
