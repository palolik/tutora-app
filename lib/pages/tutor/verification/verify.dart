import 'package:Tutora/pages/tutor/CongratsTeacher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:Tutora/pages/localdata.dart';
import 'package:Tutora/pages/tutor/TeacherMain.dart';
import 'package:Tutora/pages/home_page_ts.dart';

class Verify extends StatefulWidget {
  const Verify({
    Key? key,
  }) : super(key: key);

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _nameController = TextEditingController();
  final _genderController = TextEditingController();
  final _religionController = TextEditingController();
  final _ageController = TextEditingController();
  final _universityController = TextEditingController();
  final _studySubjectController = TextEditingController();
  final _teachingSubjectsController = TextEditingController();
  final _teachingAreasController = TextEditingController();
  final _experienceController = TextEditingController();
  final _targetStudentsController = TextEditingController();
  final _teachingDaysController = TextEditingController();
  final _askingSalaryController = TextEditingController();
  final _transactionIdController = TextEditingController();

  String? name;
  String? email;
  String? gender;
  String? religion;
  String? phoneNo;
  String? age;
  String? university;
  String? studySubject;
  String? teachingSubjects;
  String? teachingAreas;
  String? experience;
  String? targetStudents;
  String? teachingDays;
  String? askingSalary;

  @override
  void initState() {
    name = UserSharedPreference().getTeacherName();
    email = UserSharedPreference().getTeacherEmail();
    gender = UserSharedPreference().getTeacherGender();
    religion = UserSharedPreference().getTeacherReligion();
    phoneNo = UserSharedPreference().getTeacherPhone();
    age = UserSharedPreference().getTeacherAge();
    university = UserSharedPreference().getUniversity();
    studySubject = UserSharedPreference().getStudySubjectTeacher();
    teachingSubjects = UserSharedPreference().getTeacherTeachingSubjects();
    teachingAreas = UserSharedPreference().getTeacherTeachingAreas();
    experience = UserSharedPreference().getTeacherExperience();
    targetStudents = UserSharedPreference().getTeacherTargetSTudents();
    teachingDays = UserSharedPreference().getTeacherTeachingDays();
    askingSalary = UserSharedPreference().getTeacherAskingSalary();

    setState(() {});
    _nameController.text = name!;
    _emailController.text = email!;
    _genderController.text = gender!;
    _phoneController.text = phoneNo!;
    _ageController.text = age!;
    _religionController.text = religion!;
    _universityController.text = university!;
    _studySubjectController.text = studySubject!;
    _teachingSubjectsController.text = teachingSubjects!;
    _teachingAreasController.text = teachingAreas!;
    _experienceController.text = experience!;
    _targetStudentsController.text = targetStudents!;
    _teachingDaysController.text = teachingDays!;
    _askingSalaryController.text = askingSalary!;

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _phoneController.dispose();
    _nameController.dispose();
    _genderController.dispose();
    _religionController.dispose();
    _ageController.dispose();
    _universityController.dispose();
    _studySubjectController.dispose();
    _teachingSubjectsController.dispose();
    _teachingAreasController.dispose();
    _teachingAreasController.dispose();
    _experienceController.dispose();
    _targetStudentsController.dispose();
    _teachingDaysController.dispose();
    _askingSalaryController.dispose();
    _transactionIdController.dispose();

    super.dispose();
  }

  Future StoreVerificationRequest() async {
    adduserDetails(
      _emailController.text.trim(),
      _nameController.text.trim(),
      int.parse(_phoneController.text.trim()),
      _genderController.text.trim(),
      _religionController.text.trim(),
      _ageController.text.trim(),
      _universityController.text.trim(),
      _studySubjectController.text.trim(),
      _teachingSubjectsController.text.trim(),
      _teachingAreasController.text.trim(),
      _experienceController.text.trim(),
      _targetStudentsController.text.trim(),
      _teachingDaysController.text.trim(),
      _askingSalaryController.text.trim(),
      _transactionIdController.text.trim(),
    );
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CongratsTeacher()));
  }

  Future adduserDetails(
    String name,
    String email,
    int phone,
    String gender,
    String religion,
    String age,
    String university,
    String studySubject,
    String teachingSubjects,
    String teachingAreas,
    String experience,
    String targetStudents,
    String teachingDays,
    String askingSalary,
    String transactionId,
  ) async {
    await FirebaseFirestore.instance.collection('verification').add({
      'name': email,
      'email': name,
      'phone': phone,
      'gender': gender,
      'religion': religion,
      'age': age,
      'university': university,
      'study subject': studySubject,
      'teaching subjects': teachingSubjects,
      'teaching areas': teachingAreas,
      'experience': experience,
      'target students': targetStudents,
      'teaching days': teachingDays,
      'asking salary': askingSalary,
      'transaction id': transactionId,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
// hello world
                Image.asset(
                  "assets/inimages/logob.png",
                  width: 300,
                  height: 300,
                ),
                SizedBox(height: 10),
                Text(
                  'ভেরিফিকেশনের জন্য রিকুয়েস্ট',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20),

                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'লাল বক্সটিতে শুধুমাত্র ট্রানজেকশন আইডি লিখুন ',
                      textStyle: const TextStyle(
                          color: Color.fromARGB(255, 255, 0, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Hind Siliguri Regular'),
                      speed: const Duration(milliseconds: 200),
                    ),
                  ],
                  totalRepeatCount: 5,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),
                SizedBox(height: 20),
//first name fieldtext

// email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Color.fromARGB(255, 255, 0, 0)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _transactionIdController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Transaction Id',
                        ),
                      ),
                    ),
                  ),
                ),
// password text field
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Email',
                        ),
                      ),
                    ),
                  ),
                ),
// password text field
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _nameController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Name',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
//confirm password text field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _phoneController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Phone Number',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _genderController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Gender',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _religionController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Religion',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _ageController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Age',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _universityController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'University',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _studySubjectController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Study Subject',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _teachingSubjectsController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Teaching Subjects',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _teachingAreasController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Teaching Areas',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _experienceController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Experience',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _targetStudentsController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Target Students',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _teachingDaysController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Teaching Days',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _askingSalaryController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Asking Salary',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
// sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: StoreVerificationRequest,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 0, 0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'রিকুয়েস্ট ভেরিফিকেশন',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
// not a member sign up button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
