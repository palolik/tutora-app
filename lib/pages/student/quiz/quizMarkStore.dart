import 'package:Tutora/pages/student/quiz/ResultBox.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:Tutora/pages/localdata.dart';
import 'package:Tutora/pages/student/reqtutor/CongratsStudentInreq.dart';
import 'package:get/get.dart';

class quizMarkStore extends StatefulWidget {
  const quizMarkStore({
    Key? key,
  }) : super(key: key);

  @override
  State<quizMarkStore> createState() => _quizMarkStoreState();
}

class _quizMarkStoreState extends State<quizMarkStore> {
  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _genderController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _ageController = TextEditingController();
  final _classController = TextEditingController();
  final _cityController = TextEditingController();
  final _detailsAddressController = TextEditingController();
  final _religionController = TextEditingController();
  final _noOfStudentController = TextEditingController();

  final _isBookedController = TextEditingController();

  String? name;
  String? email;
  String? gender;
  String? religion;
  String? phoneNo;
  String? age;
  String? clas;
  String? city;
  String? address;
  String? result1;

  @override
  void initState() {
    _isBookedController.text = UserSharedPreference().getQuizScore();
    name = UserSharedPreference().getName();
    email = UserSharedPreference().getEmail();
    gender = UserSharedPreference().getGender();
    religion = UserSharedPreference().getReligion();
    phoneNo = UserSharedPreference().getNumber();
    age = UserSharedPreference().getAge();
    clas = UserSharedPreference().getClassStudent();
    city = UserSharedPreference().getCity();
    address = UserSharedPreference().getDetailsAddress();
    result1 = UserSharedPreference().getQuizScore();
    setState(() {});
    _nameController.text = name!;
    _emailController.text = email!;
    _genderController.text = gender!;
    _phoneNumberController.text = phoneNo!;
    _ageController.text = age!;
    _classController.text = clas!;
    _cityController.text = city!;
    _detailsAddressController.text = address!;
    _religionController.text = religion!;

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _emailController.dispose();
    _nameController.dispose();
    _genderController.dispose();
    _phoneNumberController.dispose();
    _ageController.dispose();
    _classController.dispose();
    _cityController.dispose();
    _detailsAddressController.dispose();
    _religionController.dispose();

    super.dispose();
  }

  Future storeReq() async {
    adduserDetails(
      _emailController.text.trim(),
      _nameController.text.trim(),
      _genderController.text.trim(),
      int.parse(_phoneNumberController.text.trim()),
      _ageController.text.trim(),
      _classController.text.trim(),
      _cityController.text.trim(),
      _detailsAddressController.text.trim(),
      _noOfStudentController.text.trim(),
      _isBookedController.text.trim(),
    );
    Get.to(ResultBox(result1: result1!));
  }

  Future adduserDetails(
      String email,
      String name,
      String gender,
      int phoneNumber,
      String age,
      String clas,
      String city,
      String address,
      String noOfStudent,
      String isbooked) async {
    await FirebaseFirestore.instance.collection('quizMarkHSC').add({
      'email': email,
      'name': name,
      'gender': gender,
      'phone_number': phoneNumber,
      'age': age,
      'class': clas,
      'city': city,
      'address': address,
      'no of student': noOfStudent,
      'quizMark': isbooked,
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
                  "assets/inimages/LOGO.png",
                  width: 300,
                  height: 300,
                ),
                Text(
                  'Quiz Mark Submit Form ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),

                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Scroll down and tap on Submit Button.',
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
//first name fieldtext

                SizedBox(height: 20),
// email textfield

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
                        controller: _classController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Class',
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
                        controller: _cityController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'City',
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
                        controller: _isBookedController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          // hintText: 'Pending',
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
                          'Submit',
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
