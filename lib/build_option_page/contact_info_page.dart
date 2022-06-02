import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../resume_model.dart';

class contactinfo extends StatefulWidget {
  const contactinfo({Key? key}) : super(key: key);

  @override
  _contactinfoState createState() => _contactinfoState();
}

class _contactinfoState extends State<contactinfo> {
  final GlobalKey<FormState> _contactinfoFormKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _address1Controller = TextEditingController();
  final TextEditingController _address2Controller = TextEditingController();
  final TextEditingController _address3Controller = TextEditingController();

  final ImagePicker _picker = ImagePicker();
  File? _image;

  int _currentIndex = 0;

  String? name;
  String? email;
  int? phone;
  String? address;

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
          "Resume Workspace",
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
              alignment: const Alignment(0, 0.6),
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "Contact",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          (_currentIndex == 0)
                              ? Container(
                            height: 4,
                            color: Colors.amber.shade100,
                            width: _width * 0.5,
                          )
                              : const SizedBox(height: 4),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "Photo",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          (_currentIndex == 1)
                              ? Container(
                            height: 4,
                            color: Colors.amber.shade100,
                            width: _width * 0.5,
                          )
                              : const SizedBox(height: 4),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              child: IndexedStack(
                index: _currentIndex,
                children: [
                  //contact
                  Container(
                    margin: const EdgeInsets.all(28),
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                      bottom: 25,
                    ),
                    color: Colors.white,
                    child: Form(
                      key: _contactinfoFormKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Icon(Icons.account_circle, color: Colors.grey, ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                flex: 10,
                                child: TextFormField(
                                  controller: _nameController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Enter your name';
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    name = val;
                                  },
                                  decoration: const InputDecoration(
                                    label: Text("Name"),
                                    hintText: "Enter your name",
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Icon(Icons.email, color: Colors.grey, ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                flex: 10,
                                child: TextFormField(
                                  controller: _emailController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Enter your Email';
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    email = val;
                                  },
                                  decoration: const InputDecoration(
                                    label: Text("Email"),
                                    hintText: "Enter your Email",
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Icon(Icons.phone_android, color: Colors.grey,),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                flex: 10,
                                child: TextFormField(
                                  controller: _phoneController,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Enter your Phone number';
                                    } else if (val.length != 10) {
                                      return 'Invelid length';
                                    }
                                    return null;
                                  },
                                  onSaved: (val) {
                                    phone = int.parse(val!);
                                  },
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    label: Text("Phone"),
                                    hintText: "Enter your Phone number",
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Icon(Icons.location_on, color: Colors.grey),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                flex: 10,
                                child: TextFormField(
                                  controller: _address1Controller,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return 'Enter your address';
                                    }
                                  },
                                  onSaved: (val) {
                                    address = val;
                                  },
                                  decoration: const InputDecoration(
                                    label: Text("Address"),
                                    hintText: "Enter your Address",
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                flex: 10,
                                child: TextFormField(
                                  controller: _address2Controller,
                                  onSaved: (val) {
                                    address = address! + ", " + val!;
                                  },
                                  decoration: const InputDecoration(
                                    hintText: "Address line 2",
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                flex: 10,
                                child: TextFormField(
                                  controller: _address3Controller,
                                  onSaved: (val) {
                                    address = address! + ", " + val!;
                                  },
                                  decoration: const InputDecoration(
                                    hintText: "Address line 3",
                                    border: UnderlineInputBorder(),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  if (_contactinfoFormKey.currentState!
                                      .validate()) {
                                    _contactinfoFormKey.currentState!.save();

                                    resume.name = name;
                                    resume.email = email;
                                    resume.phone = phone;
                                    resume.address = address;
                                    resume.image = _image!;

                                    print(resume.name);
                                    print(resume.email);
                                    print(resume.phone);
                                    print(resume.address);
                                  }
                                },
                                child: const Text("Submit"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  _contactinfoFormKey.currentState!.reset();

                                  _nameController.clear();
                                  _emailController.clear();
                                  _phoneController.clear();
                                  _address1Controller.clear();
                                  _address2Controller.clear();
                                  _address3Controller.clear();

                                  name = "";
                                  email = "";
                                  phone = 0;
                                  address = "";

                                  resume.name = "";
                                  resume.email = "";
                                  resume.phone = 0;
                                  resume.address = "";

                                  print(resume.name);
                                  print(resume.email);
                                  print(resume.phone);
                                  print(resume.address);
                                },
                                child: Text("Reset"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  //photo
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: _width,
                        height: _height * 0.3,
                        margin: const EdgeInsets.all(28),
                        color: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.grey.shade400,
                        backgroundImage: (_image != null)? FileImage(_image!):null,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            (_image == null)
                                ? const Text(
                              "ADD",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            )
                                : Container(),
                            Align(
                              alignment: const Alignment(0.9, 0.9),
                              child: FloatingActionButton(
                                child: Icon(Icons.add),
                                onPressed: () async {
                                  XFile? xfile = await _picker.pickImage(
                                      source: ImageSource.gallery);
                                  String path = xfile!.path;
                                  File file = File(path);
                                  setState(() {
                                    _image = file;
                                  });
                                },
                                mini: true,
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
          ),
        ],
      ),
    );
  }
}