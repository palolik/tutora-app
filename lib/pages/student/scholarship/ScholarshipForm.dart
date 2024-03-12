import 'package:Tutora/pages/student/CongratsStudent.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:Tutora/pages/localdata.dart';
import 'package:Tutora/pages/student/reqtutor/CongratsStudentInreq.dart';

class ScholarShip2 extends StatefulWidget {
  const ScholarShip2({
    Key? key,
  }) : super(key: key);

  @override
  State<ScholarShip2> createState() => _ScholarShip2State();
}

class _ScholarShip2State extends State<ScholarShip2> {
  final _subjectController = TextEditingController();
  final _daysController = TextEditingController();
  final _salaryController = TextEditingController();
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
  final _preferableTimeController = TextEditingController();
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

  @override
  void initState() {
    name = UserSharedPreference().getName();
    email = UserSharedPreference().getEmail();
    gender = UserSharedPreference().getGender();
    religion = UserSharedPreference().getReligion();
    phoneNo = UserSharedPreference().getNumber();
    age = UserSharedPreference().getAge();
    clas = UserSharedPreference().getClassStudent();
    city = UserSharedPreference().getCity();
    address = UserSharedPreference().getDetailsAddress();
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
    _subjectController.dispose();
    _daysController.dispose();
    _salaryController.dispose();
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
    );
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const CongratsStudent()));
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
  ) async {
    await FirebaseFirestore.instance.collection('scholarshipDatabase').add({
      'email': email,
      'name': name,
      'gender': gender,
      'phone_number': phoneNumber,
      'age': age,
      'class': clas,
      'city': city,
      'address': address,
      'no of student': noOfStudent,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
                const Text(
                  'বৃত্তির জন্যে আবেদন কর ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'আবেদন করো',
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
                const SizedBox(
                  height: 30,
                ),

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
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'ইমেইল',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
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
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'নাম',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
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
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'লিঙ্গ',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
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
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'ধর্ম',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
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
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'ফোন',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
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
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'বয়স',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
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
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'শ্রেণি',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
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
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'শহর',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
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
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'সম্পূর্ণ ঠিকানা',
                        ),
                      ),
                    ),
                  ),
                ),
// password text field

                const SizedBox(height: 20),

// sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: storeReq,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 0, 0),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          'আবেদন কর',
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
                const SizedBox(height: 20),
// not a member sign up button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
