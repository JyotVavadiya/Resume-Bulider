import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Center(
                  child: Text("Exit App"),
                ),
                content: const Text("Are you sure to want to Exit?"),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text("Yes"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text("No"),
                  ),
                ],
              );
            });
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Resume Builder",
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
                alignment: Alignment.center,
                color: Colors.blue,
                child: const Text(
                  "RESUME",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  Container(
                    child: Image.asset('assets/images/open-cardboard-box.png',
                        height: 70),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    child: const Text(
                      "No Resumes + Creat new Resume",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).pushNamed('build_option');
          },
          elevation: 0,
        ),
      ),
    );
  }
}