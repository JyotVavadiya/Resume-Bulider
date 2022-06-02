
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class projects extends StatefulWidget {
  const projects({Key? key}) : super(key: key);

  @override
  _projectsState createState() => _projectsState();
}

class _projectsState extends State<projects> {

  final GlobalKey<FormState> _projectFormkey = GlobalKey<FormState>();

  final TextEditingController _projectTitleController = TextEditingController();
  final TextEditingController _rolesController = TextEditingController();
  final TextEditingController _technologiesController = TextEditingController();
  final TextEditingController _descripationController = TextEditingController();

  bool val1 = false;
  bool val2 = false;
  bool val3 = false;

  String? projectTitle;
  String? roles;
  String? technologies;
  String? descripation;

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
          "Projects",
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
                              padding: EdgeInsets.only(top: 25, right: 185),
                              child: Text("Project Title", style: _titlestyle),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                              child: Form(
                                key: _projectFormkey,
                                child: TextFormField(
                                  controller: _projectTitleController,
                                  validator: (val){
                                    if(val!.isEmpty){
                                      return 'Enter your degree';
                                    }
                                    return null;
                                  },
                                  onSaved: (val){
                                    projectTitle = val;
                                  },
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: 'Resume Builder App',
                                    hintStyle: _hinttext,

                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 170, top: 25),
                              child: Text("Technologies", style: _titlestyle),
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
                                    "C Programming",
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
                                    "C++",
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
                                    "Flutter",
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
                              padding: EdgeInsets.only(top: 25, right: 250),
                              child: Text("Roles", style: _titlestyle),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10, left: 20, right: 20),

                              child: TextFormField(
                                controller: _rolesController,
                                validator: (val){
                                  if(val!.isEmpty){
                                    return 'Enter your degree';
                                  }
                                  return null;
                                },
                                onSaved: (val){
                                  roles = val;
                                },
                                maxLines: 2,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintMaxLines: 2,
                                  hintText: 'Organize team members, Code analysis',
                                  hintStyle: _hinttext,

                                ),
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.only(top: 25, right: 180),
                              child: Text("Technologies", style: _titlestyle),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10, left: 20, right: 20),

                              child: TextFormField(
                                controller: _technologiesController,
                                validator: (val){
                                  if(val!.isEmpty){
                                    return 'Enter your degree';
                                  }
                                  return null;
                                },
                                onSaved: (val){
                                  technologies = val;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: '5 - Programmers',
                                  hintStyle: _hinttext,

                                ),
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.only(top: 25, right: 100),
                              child: Text("Project Descripation", style: _titlestyle),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10, left: 20, right: 20),

                              child: TextFormField(
                                controller: _descripationController,
                                validator: (val){
                                  if(val!.isEmpty){
                                    return 'Enter your degree';
                                  }
                                  return null;
                                },
                                onSaved: (val){
                                  descripation = val;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter Your Project Descripation',
                                  hintStyle: _hinttext,

                                ),
                              ),
                            ),
                            const SizedBox(height: 15),
                            ElevatedButton(onPressed: (){},
                              child: Text("Save"),),
                            const SizedBox(height: 20),
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