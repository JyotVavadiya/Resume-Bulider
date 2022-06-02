import 'package:resume_builder/resume_model.dart';
import 'package:flutter/material.dart';

class carrierobjective extends StatefulWidget {
  const carrierobjective({Key? key}) : super(key: key);

  @override
  _carrierobjectiveState createState() => _carrierobjectiveState();
}

class _carrierobjectiveState extends State<carrierobjective> {
  final GlobalKey<FormState> _carrierobjectiveFormkey = GlobalKey<FormState>();
  final GlobalKey<FormState> _currentFormkey = GlobalKey<FormState>();

  final TextEditingController _carrierController = TextEditingController();
  final TextEditingController _currentController = TextEditingController();

  String? carrier;
  String? current;

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
          "Carrier Objective",
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
                SizedBox(height: 20),
                Stack(
                  children: [
                    Container(
                      height: 300,
                      width: _width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding:
                            EdgeInsets.only(top: 25, left: 12, right: 165),
                            child: Text("Career Objective", style: _titleStyle),
                          ),
                          Container(
                            padding:
                            EdgeInsets.only(top: 25, left: 15, right: 15),
                            child: Form(
                              key: _carrierobjectiveFormkey,
                              child: TextFormField(
                                controller: _carrierController,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Enter Descripation';
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  carrier = val;
                                },
                                maxLines: 8,
                                textAlignVertical: TextAlignVertical.top,
                                decoration: InputDecoration(
                                  hintText: "Descripation",
                                  hintStyle: _hinttext,
                                  border: OutlineInputBorder(),
                                  //contentPadding: EdgeInsets.symmetric(vertical: 80.0, horizontal: 10.0)
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    Container(
                      height: 170,
                      width: _width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 25, left: 12),
                            child: Text(
                                "Current Designation(Experienced Candidate)",
                                style: _titleStyle),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            child: Form(
                              key: _currentFormkey,
                              child: TextFormField(
                                controller: _currentController,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return 'Enter Designation';
                                  }
                                  return null;
                                },
                                onSaved: (val) {
                                  current = val;
                                },
                                decoration: InputDecoration(
                                  hintText: 'Software Engineer',
                                  hintStyle: _hinttext,
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      if(_carrierobjectiveFormkey.currentState!.validate()){
                        _carrierobjectiveFormkey.currentState!.save();
                        resume.carrier = carrier;
                      }
                      if(_currentFormkey.currentState!.validate()){
                        _currentFormkey.currentState!.save();
                        resume.current = current;
                      }
                    },
                    child: Text("Save"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}