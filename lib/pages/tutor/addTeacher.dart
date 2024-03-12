import 'dart:io';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:Tutora/pages/tutor/CongratsTeacher.dart';
import 'package:Tutora/pages/localdata.dart';

class AddTeacherPage extends StatefulWidget {
  AddTeacherPage({Key? key}) : super(key: key);

  @override
  _AddTeacherPage createState() => _AddTeacherPage();
}

class _AddTeacherPage extends State<AddTeacherPage> {
  final _formKey = GlobalKey<FormState>();

  var email = "";
  var userName = "";
  var name = "";
  var age = "";
  var gender = "";
  var religion = "";
  var phoneNumber = "";
  var university = "";
  var teachingAreas = "";
  var teachingyear = "";
  var tpressentadress = "";
  var tparmanentadress = "";
  var studySubject = "";
  var targetStudent = "";
  var days = "";
  var experience = "";
  var askingSalary = "";
  var teachingSubject = "";
  var tutoraFeedBack = "";

  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final ageController = TextEditingController();
  final religionController = TextEditingController();
  final confirmGenderController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final universityController = TextEditingController();
  final teachingAreasController = TextEditingController();
  final teachingyearController = TextEditingController();
  final tpressentadressController = TextEditingController();
  final tparmanentadressController = TextEditingController();
  final studySubjectController = TextEditingController();
  final targetStudentController = TextEditingController();
  final daysController = TextEditingController();
  final askingSalaryController = TextEditingController();
  final cityTeachingController = TextEditingController();
  final experienceController = TextEditingController();
  final teachingSubjectController = TextEditingController();
  final teachingCityController = TextEditingController();
  final tutoraFeedbackController = TextEditingController();
  String? url;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    usernameController.dispose();
    nameController.dispose();
    confirmGenderController.dispose();
    religionController.dispose();
    phoneController.dispose();
    ageController.dispose();
    universityController.dispose();
    teachingAreasController.dispose();
    teachingyearController.dispose();
    tpressentadressController.dispose();
    tparmanentadressController.dispose();
    cityTeachingController.dispose();
    experienceController.dispose();
    askingSalaryController.dispose();
    daysController.dispose();
    cityTeachingController.dispose();
    targetStudentController.dispose();
    teachingSubjectController.dispose();
    teachingCityController.dispose();
    super.dispose();
  }

  // Adding Student
  CollectionReference pids = FirebaseFirestore.instance.collection('teachers');

  Future<void> addUser() async {
    final imgurl = await uploadImage(_image!);
    return pids
        .add({
          'email': email,
          'user name': userName,
          'name': name,
          'gender': gender,
          'religion': religion,
          'phone number': phoneNumber,
          'age': age,
          'university': university,
          'teaching areas': teachingAreas,
          'teaching year': teachingyear,
          'tpressentadress': tpressentadress,
          'tparmanentadress': tparmanentadress,
          'image url': url,
          'experience': experience,
          "study subject": studySubject,
          'asking salary': askingSalary,
          'days': days,
          "target student": targetStudent,
          'teaching subject': teachingSubject,
          'tutorafeedback': tutoraFeedBack,
        })
        .then((value) => print('User Added'))
        .catchError((error) => print('Failed to Add user: $error'));
  }

  File? _image;
  final picker = ImagePicker();
  // String? downloadUrl;

  Future imagePicker() async {
    try {
      final pick = await picker.pickImage(source: ImageSource.gallery);
      setState(() {
        if (pick != null) {
          _image = File(pick.path);
        }
      });
    } catch (e) {}
  }

  Future uploadImage(File _image) async {
    String imgId = DateTime.now().microsecondsSinceEpoch.toString();

    Reference refrence =
        FirebaseStorage.instance.ref().child('images').child('user$imgId');
    await refrence.putFile(_image);
    url = await refrence.getDownloadURL();
  }

  @override
  void initState() {
    tutoraFeedbackController.text = "null:";
    usernameController.text = UserSharedPreference().getTeacherUserName() ?? "";
    universityController.text = UserSharedPreference().getUniversity() ?? "";
    studySubjectController.text =
        UserSharedPreference().getStudySubjectTeacher() ?? "";
    emailController.text = UserSharedPreference().getTeacherEmail() ?? "";
    nameController.text = UserSharedPreference().getTeacherName() ?? "";
    confirmGenderController.text =
        UserSharedPreference().getTeacherGender() ?? "";
    targetStudentController.text =
        UserSharedPreference().getTeacherTargetSTudents() ?? "";
    experienceController.text =
        UserSharedPreference().getTeacherExperience() ?? "";
    askingSalaryController.text =
        UserSharedPreference().getTeacherAskingSalary() ?? "";
    phoneController.text = UserSharedPreference().getTeacherPhone() ?? "";
    teachingAreasController.text =
        UserSharedPreference().getTeacherTeachingAreas() ?? "";
    teachingyearController.text =
        UserSharedPreference().getTeacherteachingyear() ?? "";
    tpressentadressController.text =
        UserSharedPreference().getTeachertpressentadress() ?? "";
    tparmanentadressController.text =
        UserSharedPreference().getTeachertpressentadress() ?? "";
    cityTeachingController.text = UserSharedPreference().getTeacherCity() ?? "";

    ageController.text = UserSharedPreference().getTeacherAge() ?? "";
    daysController.text = UserSharedPreference().getTeacherTeachingDays() ?? "";
    religionController.text = UserSharedPreference().getTeacherReligion() ?? "";
    teachingSubjectController.text =
        UserSharedPreference().getTeacherTeachingSubjects() ?? "";

    tutoraFeedbackController.text =
        UserSharedPreference().getTutoraFeedback() ?? "null";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        centerTitle: true,
        title: Text("আপনার প্রফাইল কমপ্লিট করুন"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ListView(
            children: [
              Column(
                children: [
                  Container(
                      height: 250,
                      width: 250,
                      child: Column(
                        children: [
                          const Text(
                            "ছবি যুক্ত করুন",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              width: 250,
                              height: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 255, 0, 0))),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: _image == null
                                              ? Center(
                                                  child: Image.asset(
                                                  "assets/images/profile.png",
                                                  height: 150,
                                                  width: 150,
                                                ))
                                              : Image.file(_image!,
                                                  height: 150,
                                                  width: 150,
                                                  fit: BoxFit.contain),
                                        ),
                                      ],
                                    ),
                                    ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Color.fromARGB(
                                                        255, 255, 0, 0))),
                                        onPressed: () {
                                          imagePicker();
                                        },
                                        child: const Text("ছবি সিলেক্ট করুন")),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'ছবি অবশ্যই দিতে হবে',
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
              ),
              SizedBox(height: 20),
              Container(
                // this container is the value box for taking inputs
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'ইমেইল',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনার ইমেইল দিন';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'ইউজার নাম ',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: usernameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনার ইউজার নাম দিন';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'আপনার নাম',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: nameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনার নাম দিন';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'আপনি ছেলে না মেয়ে ?',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: confirmGenderController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনি ছেলে না মেয়ে ?';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'ধর্ম',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: religionController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনার ধর্ম কি ?';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'ফোন নাম্বার',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: phoneController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনার ফোন নাম্বার দিন';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'বয়স',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: ageController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনার বয়স দিন';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'শিক্ষা প্রতিষ্ঠানের নাম',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: universityController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনার শিক্ষা প্রতিষ্ঠানের নাম দিন ';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'আপনার পড়ার বিষয়',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: studySubjectController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনার পড়ার বিষয় দিন';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'আপনি কোন বৎসরের ছাত্র ?',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: teachingyearController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনি কোন বৎসরের ছাত্র ?';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'আপনার বর্তমান ঠিকানা',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: tpressentadressController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনার বর্তমান ঠিকানা দিন';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'আপনার স্থায়ী ঠিকানা',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: tparmanentadressController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনার স্থায়ী ঠিকানা দিন';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'আপনি কোন বিষয় পড়াতে চান(সর্বোচ্চ ২টি)',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: teachingSubjectController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনি কোন বিষয় পড়াতে চান';
                    }
                    return null;
                  },
                ),
              ),
              // Container(
              //   margin: const EdgeInsets.symmetric(vertical: 10.0),
              //   child: TextFormField(
              //     autofocus: false,
              //     decoration: const InputDecoration(
              //       focusColor: Color.fromARGB(255, 255, 0, 0),
              //       labelText: 'আপনার বর্তমান ঠিকানা ',
              //       labelStyle: TextStyle(
              //           fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
              //       border: OutlineInputBorder(
              //           borderSide: BorderSide(
              //         color: Color.fromARGB(255, 255, 0, 0),
              //         width: 1,
              //       )),
              //       errorStyle: TextStyle(
              //           color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
              //       enabledBorder: OutlineInputBorder(
              //         borderSide: BorderSide(
              //           width: 1,
              //           color: Color.fromARGB(255, 255, 0, 0),
              //         ),
              //       ),
              //       focusedBorder: OutlineInputBorder(
              //         borderSide: BorderSide(
              //           width: 1,
              //           color: Color.fromARGB(255, 255, 0, 0),
              //         ),
              //       ),
              //     ),
              //     controller: teachingCityController,
              //     validator: (value) {
              //       if (value == null || value.isEmpty) {
              //         return 'আপনার বর্তমান ঠিকানা দিন';
              //       }
              //       return null;
              //     },
              //   ),
              // ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'আপনি কোন শহরে পড়াবেন ?',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: teachingAreasController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনি কোন শহরে পড়াবেন ?';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'কয় বছরের পড়ানোর অভিজ্ঞতা আছে',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: experienceController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'পূর্ব অভিজ্ঞতা';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'আপনি কোন শ্রেণীর ছাত্র ছাত্রী পড়াতে চান',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: targetStudentController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনি কোন শ্রেণীর ছাত্র ছাত্রী পড়াতে চান';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'আপনি সপ্তাহে কতদিন পড়াতে পারবেন?',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: daysController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনি সপ্তাহে কতদিন পড়াতে পারবেন ?';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'মাসিক বেতন কত চান',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: askingSalaryController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'মাসিক বেতন কত চান';
                    }
                    return null;
                  },
                ),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    "নিচের ফিডব্যক বক্সটি আমরা পূরণ করবো",
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 255, 0, 0),
                      fontSize: 18,
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
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    focusColor: Color.fromARGB(255, 255, 0, 0),
                    labelText: 'টিউঁটরা ফিডব্যক',
                    labelStyle: TextStyle(
                        fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Color.fromARGB(255, 255, 0, 0),
                      width: 1,
                    )),
                    errorStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0), fontSize: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromARGB(255, 255, 0, 0),
                      ),
                    ),
                  ),
                  controller: tutoraFeedbackController,
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(
                      255,
                      255,
                      0,
                      0,
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color.fromARGB(255, 255, 0, 0))),
                      onPressed: () {
                        // Validate returns true if the form is valid, otherwise false.
                        if (_formKey.currentState!.validate()) {
                          setState(() async {
                            email = emailController.text;
                            userName = usernameController.text;
                            name = nameController.text;
                            gender = confirmGenderController.text;
                            religion = religionController.text;
                            phoneNumber = phoneController.text;
                            age = ageController.text;
                            university = universityController.text;
                            experience = experienceController.text;
                            days = daysController.text;
                            studySubject = studySubjectController.text;
                            teachingSubject = teachingSubjectController.text;
                            askingSalary = askingSalaryController.text;
                            targetStudent = targetStudentController.text;
                            teachingAreas = teachingAreasController.text;
                            teachingyear = teachingyearController.text;
                            tpressentadress = tpressentadressController.text;
                            tparmanentadress = tparmanentadressController.text;

                            addUser();

                            await UserSharedPreference()
                                .setTeacherUserName(usernameController.text);
                            await UserSharedPreference()
                                .setUniversity(universityController.text);
                            await UserSharedPreference().setStudySubjectTeacher(
                                studySubjectController.text);
                            await UserSharedPreference()
                                .setTeacherAge(ageController.text);
                            await UserSharedPreference()
                                .setTeacherEmail(emailController.text);
                            await UserSharedPreference().setTeacherExperience(
                                experienceController.text);
                            await UserSharedPreference().setStudySubjectTeacher(
                                studySubjectController.text);
                            await UserSharedPreference()
                                .setTeacherGender(confirmGenderController.text);
                            await UserSharedPreference()
                                .setTeacherPhone(phoneController.text);
                            await UserSharedPreference()
                                .setTeacherReligion(religionController.text);
                            await UserSharedPreference()
                                .setTeacherTargetStudents(
                                    targetStudentController.text);
                            await UserSharedPreference()
                                .setTeacherTeachingDays(daysController.text);
                            await UserSharedPreference()
                                .setTeacherTeachingSubjects(
                                    teachingSubjectController.text);
                            await UserSharedPreference().setTeacherAskingSalary(
                                askingSalaryController.text);
                            await UserSharedPreference()
                                .setTeacherTeachingAreas(
                                    teachingAreasController.text);
                            await UserSharedPreference().setTeacherteachingyear(
                                teachingyearController.text);
                            await UserSharedPreference()
                                .setTeachertpressentadress(
                                    tpressentadressController.text);
                            await UserSharedPreference()
                                .setTeachertparmanentadresss(
                                    tparmanentadressController.text);

                            await UserSharedPreference()
                                .setTeacherName(nameController.text);
                            await UserSharedPreference().setTeacherTeachingCity(
                                teachingCityController.text);
                            await UserSharedPreference().setGetTutoraFeedback(
                                tutoraFeedbackController.text);
                            await UserSharedPreference().setTeacherExperience(
                                experienceController.text);

                            Get.to(CongratsTeacher());
                          });
                        }
                      },
                      child: const Text(
                        'কমপ্লিট / আপডেট',
                        style: TextStyle(fontSize: 22.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
