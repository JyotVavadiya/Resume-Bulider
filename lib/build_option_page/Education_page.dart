import 'package:resume_builder/resume_model.dart';
import 'package:flutter/material.dart';

class education extends StatefulWidget {
  const education({Key? key}) : super(key: key);

  @override
  _educationState createState() => _educationState();
}

class _educationState extends State<education> {
  final GlobalKey<FormState> _educationFormkey = GlobalKey<FormState>();

  final TextEditingController _degreeController = TextEditingController();
  final TextEditingController _instituteController = TextEditingController();
  final TextEditingController _collegeController = TextEditingController();
  final TextEditingController _yearController = TextEditingController();

  String? degree;
  String? institute;
  String? college;
  String? year;

  TextStyle _titlestyle = TextStyle(
    color: Colors.blue,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  TextStyle _hinttext = TextStyle(
    color: Colors.grey.shade400,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: const Text(
          "Education",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
            ),
          ),
          Expanded(
            flex: 9,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 25),
                  Stack(
                    children: [
                      Container(
                        height: 520,
                        width: 350,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 25, right: 155),
                                child: Text("Course/Degree", style: _titlestyle),
                              ),
                              Container(
                                padding:
                                EdgeInsets.only(top: 10, left: 20, right: 20),
                                child: Form(
                                  key: _educationFormkey,
                                  child: TextFormField(
                                    controller: _degreeController,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return 'Enter your degree';
                                      }
                                      return null;
                                    },
                                    onSaved: (val) {
                                      degree = val;
                                    },
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: 'B. Tech Information Technology',
                                      hintStyle: _hinttext,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 25, right: 60),
                                child: Text("School/Collage/Institute",
                                    style: _titlestyle),
                              ),
                              Container(
                                padding:
                                EdgeInsets.only(top: 10, left: 20, right: 20),
                                child: TextFormField(
                                  controller: _instituteController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Enter your degree';
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    institute = val;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Bhagavan Mahavir University',
                                    hintStyle: _hinttext,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 25, right: 60),
                                child: Text("School/Collage/Institute",
                                    style: _titlestyle),
                              ),
                              Container(
                                padding:
                                EdgeInsets.only(top: 10, left: 20, right: 20),
                                child: TextFormField(
                                  controller: _collegeController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Enter your degree';
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    college = val;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: '70% (or) 7.0 CGPA',
                                    hintStyle: _hinttext,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 25, right: 180),
                                child: Text("Year Of Pass", style: _titlestyle),
                              ),
                              Container(
                                padding:
                                EdgeInsets.only(top: 10, left: 20, right: 20),
                                child: TextFormField(
                                  controller: _yearController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Enter your year of Pass';
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    year = val;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: '2022',
                                    hintStyle: _hinttext,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 20, bottom: 20),
                                child: ElevatedButton(
                                  onPressed: () {
                                    if(_educationFormkey.currentState!.validate()){
                                      _educationFormkey.currentState!.save();

                                      resume.degree = degree;
                                      resume.college = college;
                                      resume.year = year;
                                    }
                                  },
                                  child: Text("Save"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}