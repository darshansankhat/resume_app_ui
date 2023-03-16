import 'package:flutter/material.dart';
import 'package:resume_app_ui/Home/Home_scrren.dart';
import 'package:resume_app_ui/Home/Menu_scrren.dart';
import 'package:resume_app_ui/Option_Scrren/Expirence.dart';
import 'package:resume_app_ui/Option_Scrren/Language.dart';
import 'package:resume_app_ui/Option_Scrren/Personal_information.dart';
import 'package:resume_app_ui/Option_Scrren/Qualification.dart';
import 'package:resume_app_ui/Option_Scrren/Salary_Scrren.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => Home_scrren(),
        "Menu" : (context) => Menu_scrren(),
        "Personal" :(context) => Personal(),
        "Quali" : (context) => Qualification(),
        "Language" : (context) => Language_scrren(),
        "expi" : (context) => Expirence_scrren(),
        "sal" : (context) => Salary_scrren(),
      },
    ),
  );
}