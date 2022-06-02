

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_builder/resume_model.dart';


class finalresume extends StatefulWidget {
  const finalresume({Key? key}) : super(key: key);

  @override
  State<finalresume> createState() => _finalresumeState();
}

class _finalresumeState extends State<finalresume> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Final Resume"),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundImage: FileImage(resume.image),
                ),
                SizedBox(width: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.account_circle, color: Colors.grey,),
                        SizedBox(width: 10,),
                        Text("${resume.name}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black87),),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Icon(Icons.email, color: Colors.grey,),
                        SizedBox(width: 10,),
                        Text("${resume.email}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black87),),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      children: [
                        Icon(Icons.phone_android, color: Colors.grey,),
                        SizedBox(width: 10,),
                        Text("${resume.phone}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black87),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 70,),
            Text("Personal Details", style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.w600),),
            SizedBox(height: 30,),
            Card(
              elevation: 2,
              child: ListTile(
                title: Row(
                  children: [
                    Text("Marital Status :", style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.w500),),
                    SizedBox(width: 15,),
                    Text("${resume.maritalStatus}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black87),),
                  ],
                ),
              )
            ),

            Card(
                elevation: 2,
                child: ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.grey,),
                      SizedBox(width: 15,),
                      Text("${resume.address}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black87),),
                    ],
                  ),
                )
            ),
            Card(
                elevation: 2,
                child: ListTile(
                  title:  Row(
                    children: [
                      Icon(Icons.cake, color: Colors.grey,),
                      SizedBox(width: 15,),
                      Text("${resume.DOB}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black87),),
                    ],
                  ),
                )
            ),
            Card(
                elevation: 2,
                child: ListTile(
                  title: Row(
                    children: [
                      Icon(Icons.flag, color: Colors.grey,),
                      SizedBox(width: 15,),
                      Text("${resume.nationality}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black87),),
                    ],
                  ),
                )
            ),
            SizedBox(height: 40,),
            Text("Education", style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.w600),),
            SizedBox(height: 25,),
            Card(
                elevation: 2,
                child: ListTile(
                  title: Row(
                    children: [
                      Text("Degree/std :", style: TextStyle(fontSize: 18, color: Colors.black54, fontWeight: FontWeight.w500),),
                      SizedBox(width: 15,),
                      Text("${resume.degree}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, color: Colors.black87),),
                    ],
                  ),
                )
            ),

          ],
        ),
      )
    );
  }
}
