import 'package:Tutora/pages/tutor/CongratsTeacher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:Tutora/pages/localdata.dart';
import 'package:Tutora/pages/student/reqtutor/CongratsStudentInreq.dart';

class EnagedTeacher extends StatefulWidget {
  const EnagedTeacher({
    Key? key,
  }) : super(key: key);

  @override
  State<EnagedTeacher> createState() => _EnagedTeacherState();
}

class _EnagedTeacherState extends State<EnagedTeacher> {
  final _subjectController = TextEditingController();
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _genderController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _ageController = TextEditingController();
  final _detailsAddressController = TextEditingController();
  final _religionController = TextEditingController();
  final _noOfStudentController = TextEditingController();
  final _preferableTimeController = TextEditingController();
  final _universityController = TextEditingController();
  final _teachingSubjectController = TextEditingController();
  final _tutionIdController = TextEditingController();

  String? name;
  String? email;
  String? gender;
  String? religion;
  String? phoneNo;
  String? age;
  String? clas;
  String? city;
  String? address;
  String? university;
  String? studySubject;
  String? teachingSubject;
  String? tutionId;

  @override
  void initState() {
    _tutionIdController.text = UserSharedPreference().getTutionId();
    name = UserSharedPreference().getTeacherName() ??
        "Complete your profile first";
    email = UserSharedPreference().getTeacherEmail() ??
        "Complete your profile first";
    gender = UserSharedPreference().getTeacherGender() ??
        "Complete your profile first";
    religion = UserSharedPreference().getTeacherReligion() ??
        "Complete your profile first";
    phoneNo = UserSharedPreference().getTeacherPhone() ??
        "Complete your profile first";
    age =
        UserSharedPreference().getTeacherAge() ?? "Complete your profile first";
    university =
        UserSharedPreference().getUniversity() ?? "Complete your profile first";
    studySubject = UserSharedPreference().getStudySubjectTeacher() ??
        "Complete your profile first";
    teachingSubject = UserSharedPreference().getTeacherTeachingSubjects() ??
        "Complete your profile first";
    address = UserSharedPreference().getTeacherTeachingAreas() ??
        "Complete your profile first";
    setState(() {});
    _nameController.text = name!;
    _emailController.text = email!;
    _genderController.text = gender!;
    _phoneNumberController.text = phoneNo!;
    _ageController.text = age!;
    _religionController.text = religion!;
    _universityController.text = university!;
    _teachingSubjectController.text = teachingSubject!;
    _subjectController.text = studySubject!;
    _detailsAddressController.text = address!;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _subjectController.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _genderController.dispose();
    _phoneNumberController.dispose();
    _ageController.dispose();
    _detailsAddressController.dispose();
    _religionController.dispose();
    _universityController.dispose();
    _teachingSubjectController.dispose();

    super.dispose();
  }

  Future storeReq() async {
    adduserDetails(
      _subjectController.text.trim(),
      _emailController.text.trim(),
      _nameController.text.trim(),
      _genderController.text.trim(),
      int.parse(_phoneNumberController.text.trim()),
      _ageController.text.trim(),
      _detailsAddressController.text.trim(),
      _teachingSubjectController.text.trim(),
      _universityController.text.trim(),
      _religionController.text.trim(),
      _tutionIdController.text.trim(),
    );
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CongratsTeacher()));
  }

  Future adduserDetails(
    String studySubject,
    String email,
    String name,
    String gender,
    int phoneNumber,
    String age,
    String address,
    String teachingSubject,
    String university,
    String religion,
    String tutionId,
  ) async {
    await FirebaseFirestore.instance.collection('engagedTeacher').add({
      'study subject': studySubject,
      'email': email,
      'name': name,
      'gender': gender,
      'phone number': phoneNumber,
      'age': age,
      'address': address,
      'teaching subject': teachingSubject,
      'university': university,
      'religion': religion,
      'tution id': tutionId,
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
                Text(
                  'টিউশন বুকিং ফর্ম ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),

                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'নিচে যান এবং জমা দিন বাটনটিতে ক্লিক করুন',
                      textStyle: const TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      speed: const Duration(milliseconds: 200),
                    ),
                  ],
                  totalRepeatCount: 5,
                  pause: const Duration(milliseconds: 1000),
                  displayFullTextOnTap: true,
                  stopPauseOnTap: true,
                ),

                SizedBox(height: 20),
                SizedBox(height: 20),
// email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _tutionIdController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Tution ID',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

//first name fieldtext

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
                SizedBox(height: 20),
// email textfield
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Name',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
// email textfield
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Gender',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
// email textfield
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Religion',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
// email textfield
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
                        controller: _phoneNumberController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Phone Number',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
// email textfield
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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Age',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
// email textfield

// email textfield

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
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'university',
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
                        controller: _subjectController,
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
                        controller: _teachingSubjectController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Teaching Subject',
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
// email textfield
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
                        controller: _detailsAddressController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'address in details',
                        ),
                      ),
                    ),
                  ),
                ),
// password text field

                SizedBox(height: 20),
// sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: storeReq,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 0, 0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'জমা দিন',
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
