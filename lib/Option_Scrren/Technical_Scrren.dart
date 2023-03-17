import 'package:flutter/material.dart';

class Technical_scrren extends StatefulWidget {
  const Technical_scrren({Key? key}) : super(key: key);

  @override
  State<Technical_scrren> createState() => _Technical_scrrenState();
}

class _Technical_scrrenState extends State<Technical_scrren> {

  List ski=[false,false,false,false,false];
  bool a = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Technical Skill"),
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
            title: Text("Technical Skill",style: TextStyle(color: Colors.pink),),
            trailing: Icon(Icons.edit,color: Colors.pink,),
            collapsedBackgroundColor: Colors.pink.shade100,
            children: [
              //1
              CheckboxListTile(value: ski[0],
                activeColor: Colors.pink,
                onChanged: (value){
                  setState(() {
                    ski[0]=value!;
                  });
                },
                title: Text("Flutter Developer"),),
              //2
              CheckboxListTile(value: ski[1],
                activeColor: Colors.pink,
                onChanged: (value){
                  setState(() {
                    ski[1]=value!;
                  });
                },
                title: Text("Web development"),),
              //3
              CheckboxListTile(value: ski[2],
                activeColor: Colors.pink,
                onChanged: (value){
                  setState(() {
                    ski[2]=value!;
                  });
                },
                title: Text("Bookkeeping"),),
              //4
              CheckboxListTile(value: ski[3],
                activeColor: Colors.pink,
                onChanged: (value){
                  setState(() {
                    ski[3]=value!;
                  });
                },
                title: Text("UX design"),),
              //5
              CheckboxListTile(value: ski[4],
                activeColor: Colors.pink,
                onChanged: (value){
                  setState(() {
                    ski[4]=value!;
                  });
                },
                title: Text("Data analysis"),),
            ],
          ),
        ],
      ),
    );
  }
}
