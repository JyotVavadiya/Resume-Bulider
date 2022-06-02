import 'dart:io';

String emptyPath = "";

class Resume{
  String? name;
  String? email;
  int? phone;
  String? address;
  File image;
  String? DOB;
  String? nationality;
  String? maritalStatus;
  dynamic languagesKnown;
  List? technicalSkills;
  List? hobbies;
  List? Achievements;
  String? carrier;
  String? current;
  String? degree;
  String? institute;
  String? college;
  String? year;
  String? employedstatus;
  String? com_name;
  String? role;
  String? joined;
  String? exit;
  String? discripationdeclaration;
  String? datedeclaration;
  String? placedeclaration;

  Resume({
    this.name,
    this.email,
    this.phone,
    this.address,
    required this.image,
    this.DOB,
    this.nationality,
    this.maritalStatus,
    this.languagesKnown,
    this.technicalSkills,
    this.hobbies,
    this.Achievements,
    this.carrier,
    this.current,
    this.degree,
    this.institute,
    this.college,
    this.year,
    this.employedstatus,
    this.com_name,
    this.role,
    this.joined,
    this.exit,
  });
}

Resume resume = Resume(image:  File(emptyPath));