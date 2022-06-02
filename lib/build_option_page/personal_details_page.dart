import 'package:resume_builder/resume_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class personaldetails extends StatefulWidget {
  const personaldetails({Key? key}) : super(key: key);

  @override
  _personaldetailsState createState() => _personaldetailsState();
}

class _personaldetailsState extends State<personaldetails> {
  final GlobalKey<FormState> _personaldetailsFormkey = GlobalKey<FormState>();

  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _nationalityController = TextEditingController();

  String? DOB;
  String? nationality;

  dynamic grpVal = "marital_status";

  bool val1 = false;
  bool val2 = false;
  bool val3 = false;

  TextStyle _titleStyle = TextStyle(
    fontSize: 22,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  );

  TextStyle _hinttext = TextStyle(
    color: Colors.grey.shade400,
    fontWeight: FontWeight.w600,
    fontSize: 20,
  );

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
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
          "Personal Details",
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Container(
                      height: _height * 0.7,
                      width: _width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 255, top: 30),
                              child: Text("DOB", style: _titleStyle),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  right: 25, left: 25, top: 10, bottom: 25),
                              child: Form(
                                key: _personaldetailsFormkey,
                                child: Column(
                                  children: [
                                    TextFormField(
                                      controller: _dobController,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return 'Enter Your Date of Birth';
                                        }
                                        return null;
                                      },
                                      onSaved: (val) {
                                        DOB = val;
                                      },
                                      decoration: InputDecoration(
                                        hintText: "DD/MM/YYYY",
                                        hintStyle: _hinttext,
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 160, top: 20),
                                      child: Text("Marital Status", style: _titleStyle),
                                    ),
                                    Container(
                                      //padding: EdgeInsets.only( top: 10),
                                      child: Row(
                                        children: [
                                          Radio(
                                            value: "Single",
                                            groupValue: grpVal,
                                            onChanged: (val) {
                                              setState(() {
                                                grpVal = val;
                                              });
                                            },
                                          ),
                                          const Text(
                                            "Single",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      //padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Radio(
                                            value: "Married",
                                            groupValue: grpVal,
                                            onChanged: (val) {
                                              setState(() {
                                                grpVal = val;
                                              });
                                            },
                                          ),
                                          const Text(
                                            "Married",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 120, top: 10),
                                      child:
                                      Text("Languages Known", style: _titleStyle),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 10, top: 10),
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: val1,
                                            onChanged: (val) {
                                              setState(() {
                                                val1 = !val1;
                                              });
                                            },
                                          ),
                                          const Text(
                                            "English",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: val2,
                                            onChanged: (val) {
                                              setState(() {
                                                val2 = !val2;
                                              });
                                            },
                                          ),
                                          const Text(
                                            "Hindi",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Row(
                                        children: [
                                          Checkbox(
                                            value: val3,
                                            onChanged: (val) {
                                              setState(() {
                                                val3 = !val3;
                                              });
                                            },
                                          ),
                                          const Text(
                                            "Gujarati",
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(right: 190, top: 10),
                                      child: Text("Nationality", style: _titleStyle),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 10),
                                      child: TextFormField(
                                        controller: _nationalityController,
                                        validator: (val) {
                                          if (val!.isEmpty) {
                                            return 'Enter Your Nationality';
                                          }
                                          return null;
                                        },
                                        onSaved: (val) {
                                          nationality = val;
                                        },
                                        decoration: InputDecoration(
                                          hintText: "india",
                                          hintStyle: _hinttext,
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(height: 10),
                            ElevatedButton(
                              child: Text("Save"),
                              onPressed: () {
                                validateAndSave();
                              },
                            ),
                            SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  validateAndSave() {
    if (_personaldetailsFormkey.currentState!.validate()) {
      _personaldetailsFormkey.currentState!.save();

      Map<String, bool> langugeKnown = <String, bool>{};

      //MapEntry<String,bool> eng = MapEntry('English', val1);
      langugeKnown['English'] = val1;
      langugeKnown['Hindi'] = val2;
      langugeKnown['Gujarati'] = val3;

      resume.DOB = DOB;
      resume.nationality = nationality;
      resume.maritalStatus = grpVal;
      resume.languagesKnown = langugeKnown;

      print(resume.DOB);
      print(resume.maritalStatus);
      print(resume.languagesKnown);
      print(resume.nationality);
    }
  }
}