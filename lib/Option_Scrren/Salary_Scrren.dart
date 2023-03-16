import 'package:flutter/material.dart';

class Salary_scrren extends StatefulWidget {
  const Salary_scrren({Key? key}) : super(key: key);

  @override
  State<Salary_scrren> createState() => _Salary_scrrenState();
}

class _Salary_scrrenState extends State<Salary_scrren> {

  RangeValues sal =RangeValues(5000, 10000);
  TextEditingController saltxt =TextEditingController(text: "10000");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Salary Information"),
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
          ExpansionTile(title: Text("Salary Information"),
          collapsedBackgroundColor: Colors.pink.shade100,
          collapsedIconColor: Colors.pink,
          children: [SizedBox(height: 50),
            RangeSlider(values: sal,
              labels: RangeLabels("${sal.start.round()}","${sal.end.round()}"),onChanged: (value) {
                setState(() {
                  sal=value;
                  TextEditingController(text: "$sal");
                });
              },
              activeColor: Colors.pink,
              divisions: 10,
              max: 50000,
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              width: 200,
              child: TextField(
                keyboardType: TextInputType.number,
                controller: saltxt,
                onChanged: (value) {
                  setState(() {
                    sal = value as RangeValues;
                  });
                },
                style: TextStyle(fontSize: 18,color: Colors.pink),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink,width: 4)),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink)),
                  prefixIcon: Icon(Icons.currency_rupee,color: Colors.pink,),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text("Enter Your Salary",style: TextStyle(fontSize: 20,color: Colors.pink),)],
          ),
        ],
      ),
    );
  }
}
