import 'package:flutter/material.dart';

import '../resume_model.dart';

class achievements extends StatefulWidget {
  const achievements({Key? key}) : super(key: key);

  @override
  _achievementsState createState() => _achievementsState();
}

class _achievementsState extends State<achievements> {

  List<Widget> input = [];
  List<TextEditingController> textEditingController = [];

  TextStyle _hinttext = TextStyle(
    color: Colors.grey.shade400,
    //fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  @override
  void initState() {
    super.initState();

    textEditingController.add(TextEditingController());
    textEditingController.add(TextEditingController());

    input.add(getInput(Container(), 0));
    input.add(getInput(Container(), 1));
  }


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
          "Achievements",
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
                            padding: EdgeInsets.only(top: 25),
                            child: const Text(
                              "Enter Your Achivements",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Column(
                            children: input
                                .map((e) => getInput(e, input.indexOf(e)))
                                .toList(),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: OutlinedButton(
                              onPressed: () {
                                textEditingController
                                    .add(TextEditingController());
                                input.add(getInput(Container(), input.length));
                                setState(() {});
                              },
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.grey.shade200,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 160, vertical: 15),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              resume.Achievements;
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Save",
                                style: TextStyle(fontSize: 20),
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
  Widget getInput(Widget w, int i) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.only(top: 5,left: 25),
            child: TextField(
              controller: textEditingController[i],
              decoration: InputDecoration(
                hintText: "Exceeded sales 17% avearage",
                hintStyle: _hinttext,
                border: UnderlineInputBorder(),
              ),
            ),
          ),
        ),
        Expanded(
          child: IconButton(
            onPressed: () {
              input.remove(w);
              textEditingController.removeAt(i);
              setState(() {});
            },
            icon: Icon(Icons.delete, color: Colors.grey,),
          ),
        ),
      ],
    );
  }
}