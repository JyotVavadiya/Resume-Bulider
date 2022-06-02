import 'package:flutter/material.dart';

class option extends StatefulWidget {
  const option({Key? key}) : super(key: key);

  @override
  _optionState createState() => _optionState();
}

class _optionState extends State<option> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.apps,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pushNamed('final_resume');
            },
          )
        ],
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
              alignment: Alignment.center,
              color: Colors.blue,
              child: const Text(
                "Build Options",
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  displayOption(
                    img: 'assets/images/contact.png',
                    title: "Contact Info",
                    pageName: 'contact_info_page',
                  ),
                  displayOption(
                    img: 'assets/images/briefcase.png',
                    title: "Carrier Objective",
                    pageName: 'carrier_objective_page',
                  ),
                  displayOption(
                    img: 'assets/images/account.png',
                    title: "Personal Details",
                    pageName: 'personal_details_page',
                  ),
                  displayOption(
                    img: 'assets/images/graduation-cap.png',
                    title: "Education",
                    pageName: 'Education_page',
                  ),
                  displayOption(
                    img: 'assets/images/logical-thinking.png',
                    title: "Experiences",
                    pageName: 'experiences_page',
                  ),
                  displayOption(
                    img: 'assets/images/certificate.png',
                    title: "Technical Skills",
                    pageName: 'technical_skills',
                  ),
                  displayOption(
                    img: 'assets/images/open-book.png',
                    title: "Interest/Hobbies",
                    pageName: 'hobbies_page',
                  ),
                  displayOption(
                    img: 'assets/images/project-management.png',
                    title: "Projects",
                    pageName: 'projects_page',
                  ),
                  displayOption(
                    img: 'assets/images/experience.png',
                    title: "Achievements",
                    pageName: 'achievements_page',
                  ),
                  displayOption(
                    img: 'assets/images/handshake.png',
                    title: "Referencs",
                    pageName: 'referencs_page',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget displayOption(
      {required String img, required String title, required String pageName}) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(pageName);
          },
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Image.asset(img, height: 30),
                const SizedBox(width: 35),
                Text(
                  title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ),
        const Divider(
          thickness: 1,
        ),
      ],
    );
  }
}