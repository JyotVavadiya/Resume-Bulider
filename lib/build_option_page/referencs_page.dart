import 'package:flutter/material.dart';

class referencs extends StatefulWidget {
  const referencs({Key? key}) : super(key: key);

  @override
  _referencsState createState() => _referencsState();
}

class _referencsState extends State<referencs> {

  final GlobalKey<FormState> _referenceFormkey = GlobalKey<FormState>();


  final TextEditingController _referencenameController = TextEditingController();
  final TextEditingController _designationController = TextEditingController();
  final TextEditingController _instituteController = TextEditingController();


  String? referencename;
  String? designation;
  String? institute;


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
          "Referencs",
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
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 25, right: 140),
                            child: Text("Reference Name", style: _titlestyle),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10,
                                left: 20,
                                right: 20),
                            child: Form(
                              key: _referenceFormkey,
                              child: TextFormField(
                                controller: _referencenameController,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Enter your degree';
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  referencename = val;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Suresh Shah',
                                  hintStyle: _hinttext,

                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 25, right: 190),
                            child: Text("Designation", style: _titlestyle),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10,
                                left: 20,
                                right: 20),
                            child: TextFormField(
                              controller: _designationController,
                              validator: (val) {
                                if (val!.isEmpty) {
                                  return 'Enter your degree';
                                }
                                return null;
                              },
                              onSaved: (val) {
                                designation = val;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Marketing Manager, ID-342332',
                                hintStyle: _hinttext,

                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 25, right: 100),
                            child: Text("Organization/Institute",
                                style: _titlestyle),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10,
                                left: 20,
                                right: 20),

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
                                hintText: 'Green Energy Pvt. Ltd',
                                hintStyle: _hinttext,

                              ),
                            ),
                          ),


                        ],
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