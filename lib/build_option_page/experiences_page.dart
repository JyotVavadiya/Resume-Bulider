import 'package:resume_builder/resume_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class experiences extends StatefulWidget {
  const experiences({Key? key}) : super(key: key);

  @override
  _experiencesState createState() => _experiencesState();
}

class _experiencesState extends State<experiences> {
  final GlobalKey<FormState> _experiencesFormkey = GlobalKey<FormState>();

  final TextEditingController _companynameController = TextEditingController();
  final TextEditingController _qualityController = TextEditingController();
  final TextEditingController _rolesController = TextEditingController();
  final TextEditingController _joinedController = TextEditingController();
  final TextEditingController _exitController = TextEditingController();

  String? companyname;
  String? quality;
  String? roles;
  String? joined;
  String? exit;

  dynamic grpVal = "employed_status";
  String? dateval = "previous";
  String? exitval = "cur";

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
          "Experiences",
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
                              padding: EdgeInsets.only(top: 25, right: 145),
                              child: Text("Company Name", style: _titlestyle),
                            ),
                            Container(
                              padding:
                              EdgeInsets.only(top: 10, left: 20, right: 20),
                              child: Form(
                                key: _experiencesFormkey,
                                child: TextFormField(
                                  controller: _companynameController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Enter your degree';
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    companyname = val;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'New Enterprise, San Francisco',
                                    hintStyle: _hinttext,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 25, right: 70),
                              child: Text("School/College/Institute",
                                  style: _titlestyle),
                            ),
                            Container(
                              padding:
                              EdgeInsets.only(top: 10, left: 20, right: 20),
                              child: TextFormField(
                                controller: _qualityController,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Enter your degree';
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  quality = val;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Quality Test Engineer',
                                  hintStyle: _hinttext,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 25, right: 145),
                              child:
                              Text("Roles (optional)", style: _titlestyle),
                            ),
                            Container(
                              padding:
                              EdgeInsets.only(top: 10, left: 20, right: 20),
                              child: TextFormField(
                                controller: _rolesController,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Enter your degree';
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  roles = val;
                                },
                                maxLines: 3,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintMaxLines: 3,
                                  hintText: 'Working with team members to come up with new concepts and product analysis..',
                                  hintStyle: _hinttext,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 30, right: 155),
                              child: const Text(
                                "Employed Status",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10, left: 15),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Radio(
                                        value: "$dateval",
                                        groupValue: grpVal,
                                        onChanged: (val) {
                                          setState(() {
                                            exitval = "current";
                                            grpVal = val!;
                                          });
                                        },
                                      ),
                                      const Text(
                                        "Previously\nEmployed",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Radio(
                                        value: "$exitval",
                                        groupValue: grpVal,
                                        onChanged: (val) {
                                          setState(() {
                                            grpVal = val!;
                                            exitval = "cur";
                                          });
                                        },
                                      ),
                                      const Text(
                                        "Currently\nEmployed",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(25),
                              child: Divider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(right: 30),
                                          child: Text(
                                            "Date Joined",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              right: 12.5, left: 20, top: 10),
                                          child: TextFormField(
                                            controller: _joinedController,
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return 'Enter joined date';
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              joined = val;
                                            },
                                            decoration: const InputDecoration(
                                              hintText: 'DD/MM/YYYY',
                                              hintStyle: TextStyle(
                                                  color: Colors.grey, fontSize: 14),
                                              border: OutlineInputBorder(),
                                              contentPadding: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                (exitval == "current")?Expanded(
                                    child: Column(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(right: 70),
                                          child: Text(
                                            "Date Exit",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 12.5, right: 20, top: 10),
                                          child: TextFormField(
                                            controller: _exitController,
                                            validator: (val) {
                                              if (val!.isEmpty) {
                                                return 'Enter joined date';
                                              }
                                              return null;
                                            },
                                            onSaved: (val) {
                                              exitval = val;
                                            },
                                            decoration: const InputDecoration(
                                              hintText: 'DD/MM/YYYY',
                                              hintStyle: TextStyle(
                                                  color: Colors.grey, fontSize: 14),
                                              border: OutlineInputBorder(),
                                              contentPadding: EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 10),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )):Expanded(child: Container(),),
                              ],
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                if(_experiencesFormkey.currentState!.validate()){
                                  _experiencesFormkey.currentState!.save();
                                  resume.employedstatus = grpVal;
                                  resume.com_name = companyname;
                                  resume.role = roles;
                                  resume.joined = joined;
                                  resume.exit = exit;
                                }
                              },
                              child: Text("Save"),
                            ),
                            const SizedBox(height: 30),
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
}