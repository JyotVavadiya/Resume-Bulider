import 'package:resume_builder/build_option.dart';
import 'package:resume_builder/build_option_page/Education_page.dart';
import 'package:resume_builder/build_option_page/achievements_page.dart';
import 'package:resume_builder/build_option_page/contact_info_page.dart';
import 'package:resume_builder/build_option_page/experiences_page.dart';
import 'package:resume_builder/build_option_page/hobbies_page.dart';
import 'package:resume_builder/build_option_page/personal_details_page.dart';
import 'package:resume_builder/build_option_page/technical_skills.dart';


import 'package:flutter/material.dart';

import 'build_option_page/carrier_objective_page.dart';
import 'build_option_page/projects_page.dart';
import 'build_option_page/referencs_page.dart';
import 'final_resume.dart';
import 'home_page.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => home(),
        "build_option": (context) => option(),
        "contact_info_page": (context) => contactinfo(),
        "personal_details_page": (context) => personaldetails(),
        "carrier_objective_page": (context) => carrierobjective(),
        "Education_page": (context) => education(),
        "experiences_page": (context) => experiences(),
        "projects_page": (context) => projects(),
        "referencs_page": (context) => referencs(),
        "technical_skills": (context) => technicalskills(),
        "achievements_page": (context) => achievements(),
        "hobbies_page": (context) => hobbies(),
        "final_resume": (context) => finalresume(),
      },
    ),
  );
}
