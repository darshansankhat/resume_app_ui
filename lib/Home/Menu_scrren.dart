import 'package:flutter/material.dart';

class Menu_scrren extends StatefulWidget {
  const Menu_scrren({Key? key}) : super(key: key);

  @override
  State<Menu_scrren> createState() => _Menu_scrrenState();
}

class _Menu_scrrenState extends State<Menu_scrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Resume Builder App"),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              //Option
              Row(
                children: [
                  InkWell(onTap: (){
                      Navigator.pushNamed(context, 'Personal');
                  },child: Option("Personal\ninformation",Icon(Icons.person,color: Colors.pink,size: 45))),
                  Spacer(),
                  InkWell(onTap: (){
                      Navigator.pushNamed(context, "Quali");
                  },child: Option("Qualification",Icon(Icons.book,color: Colors.pink,size: 45))),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  InkWell(onTap: (){
                    Navigator.pushNamed(context, "Language");
                  },child: Option("Know\nLanguage",Icon(Icons.language,color: Colors.pink,size: 45))),
                  Spacer(),
                  InkWell(onTap: (){
                    Navigator.pushNamed(context, "expi");
                  },child: Option("Work\nExpirence",Icon(Icons.work,color: Colors.pink,size: 45))),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  InkWell(onTap: (){
                    Navigator.pushNamed(context, "sal");
                  },child: Option("Salary\nInformation",Icon(Icons.currency_exchange,color: Colors.pink,size: 45))),
                  Spacer(),
                  InkWell(onTap: (){
                    Navigator.pushNamed(context, "expi");
                  },child: Option("Technical\nSkill",Icon(Icons.spoke,color: Colors.pink,size: 45))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget Option(String data,Icon i1)
  {
    return Container(
      height: 150,
      width: 175,
      decoration: BoxDecoration(
        color: Colors.pinkAccent.shade100,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.pink,width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            i1,
            SizedBox(height: 15),
            Row(
              children: [
                Text("$data",style: TextStyle(fontSize: 20,color: Colors.black),),
                Spacer(),
                Icon(Icons.navigate_next,color: Colors.pink,size: 45),
              ],
            ),
          ],
        ),
      )
    );
  }
}
