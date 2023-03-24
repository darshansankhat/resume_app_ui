import 'dart:io';

import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:resume_app_ui/Modal_class/Modal_data.dart';
import 'package:resume_app_ui/Utils/Pdf_gen.dart';

class Show_scrren extends StatefulWidget {
  const Show_scrren({Key? key}) : super(key: key);

  @override
  State<Show_scrren> createState() => _Show_scrrenState();
}

class _Show_scrrenState extends State<Show_scrren> {
  @override
  Widget build(BuildContext context) {
    Modal_data m1 = ModalRoute.of(context)!.settings.arguments as Modal_data;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text("Your Resume"),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(onTap: () async {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("PDF Save Successfully"),),);
                await Printing.layoutPdf(onLayout: (format) => GeneratePDF(m1),);
              },child: Icon(Icons.print,color: Colors.pink.shade100,size: 30,)),
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
                      child: m1.path == null
                          ? CircleAvatar(
                              backgroundImage: AssetImage("assets/Data_image/1.png"),
                        backgroundColor: Colors.pink.shade100,
                        radius: 50,
                            )
                          : CircleAvatar(
                              radius: 50,
                              backgroundImage: FileImage(File("${m1.path}")),
                            ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 100, top: 25),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.pink),
                      ),
                    ),
                    //Personal
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 160),
                      child: Text(
                        "Personal Information",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 160),
                      child: Container(
                        height: 300,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Box("  First name :  ${m1.f_name}"),
                            Box("  Last name :  ${m1.l_name}"),
                            Box("  Address :  ${m1.add}"),
                            Box("  Contact :  ${m1.con}"),
                            Box("  E-Mail :  ${m1.email }"),
                            Box("  Gender :  ${m1.gen }"),
                            Box("  Nationality :  ${m1.nation }"),
                            Box("  City :  ${m1.city }"),
                          ],
                        ),
                      ),
                    ),
                    //Education
                    Padding(
                      padding: const EdgeInsets.only(top: 130,left: 5),
                      child: Text(
                        "Education Colification",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 155,left: 5),
                      child: Container(
                        width: 150,
                        child: Column(
                          children: [
                            Box("  Education :  ${m1.edu}")
                          ],
                        ),
                      ),
                    ),
                    //Language
                    Padding(
                      padding: const EdgeInsets.only(top: 200,left: 5),
                      child: Text(
                        "Know Language",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 230,left: 5),
                      child: Container(
                        width: 150,
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black)
                              ),
                              alignment: Alignment.center,
                              child: Text("Language : \n ${m1.lang}"),
                            )
                          ],
                        ),
                      ),
                    ),
                    //Expirence
                    Padding(
                      padding: const EdgeInsets.only(top: 290,left: 5),
                      child: Text(
                        "Job Expirence",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 310,left: 5),
                      child: Container(
                        width: 150,
                        child: Column(
                          children: [
                            Box(" Expirence :  ${m1.exp}"),
                          ],
                        ),
                      ),
                    ),
                    //About Me
                    Padding(
                      padding: const EdgeInsets.only(top: 350,left: 5),
                      child: Text("About Me :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 370,left: 5),
                      child: Text("     Lorem Ipsum is simply dummy text of the printing and typesetting industry.  It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
                    ),
                    //Salary
                    Padding(
                      padding: const EdgeInsets.only(top: 480,left: 5),
                      child: Text("Minimum Salary",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 510,left: 5,right: 5),
                      child: Box("  Salary  :  ${m1.sal}"),
                    ),
                    //Skill
                    Padding(
                      padding: const EdgeInsets.only(top: 550,left: 5),
                      child: Text(
                        "Technical Skill",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 580,left: 5,right: 5),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black)
                            ),
                            child: Text("  Skill : \n     ${m1.skill}"),
                          ),
                        ],
                      ),
                    ),
                    //declaration
                    Padding(
                      padding: const EdgeInsets.only(top: 635,left: 5),
                      child: Text("Declaration :",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 650),
                      child: Text("     I hereby declare that all the details provided above are true to the best of my knowledge."),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 685,left: 320),
                      child: Text("Sign",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 710,left: 290),
                      child: Text("${m1.f_name}"),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Widget Box(String data) {
    return Container(
      height: 30,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      alignment: Alignment.centerLeft,
      child: Text(
        "$data",
        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),
      ),
    );
  }
}
