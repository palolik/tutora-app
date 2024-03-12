import 'package:Tutora/pages/student/CongratsStudent.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:Tutora/pages/localdata.dart';
import 'package:Tutora/pages/student/reqtutor/CongratsStudentInreq.dart';
import 'package:get/get.dart';

class RequestTutorInStudent extends StatefulWidget {
  const RequestTutorInStudent({
    Key? key,
  }) : super(key: key);

  @override
  State<RequestTutorInStudent> createState() => _RequestTutorInStudentState();
}

class _RequestTutorInStudentState extends State<RequestTutorInStudent> {
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
  final _collegeController = TextEditingController();

  String? name;
  String? email;
  String? gender;
  String? religion;
  String? phoneNo;
  String? age;
  String? clas;
  String? city;
  String? address;
  String? college;

  @override
  void initState() {
    _isBookedController.text = "Pending";
    name = UserSharedPreference().getName() ?? "Complete Your Profile First";
    email = UserSharedPreference().getEmail() ?? "Complete Your Profile First";
    gender =
        UserSharedPreference().getGender() ?? "Complete Your Profile First";
    religion =
        UserSharedPreference().getReligion() ?? "Complete Your Profile First";
    phoneNo =
        UserSharedPreference().getNumber() ?? "Complete Your Profile First";
    age = UserSharedPreference().getAge() ?? "Complete Your Profile First";
    clas = UserSharedPreference().getClassStudent() ??
        "Complete Your Profile First";
    city = UserSharedPreference().getCity() ?? "Complete Your Profile First";
    address = UserSharedPreference().getDetailsAddress() ??
        "Complete Your Profile First";
    college = UserSharedPreference().getStudentInstitution() ??
        "Complete Your Profile First ";
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
    _collegeController.text = college!;

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
    _collegeController.dispose();

    super.dispose();
  }

  Future storeReq() async {
    adduserDetails(
      _subjectController.text.trim(),
      _daysController.text.trim(),
      _salaryController.text.trim(),
      _emailController.text.trim(),
      _nameController.text.trim(),
      _genderController.text.trim(),
      int.parse(_phoneNumberController.text.trim()),
      _ageController.text.trim(),
      _classController.text.trim(),
      _cityController.text.trim(),
      _detailsAddressController.text.trim(),
      _noOfStudentController.text.trim(),
      _preferableTimeController.text.trim(),
      _isBookedController.text.trim(),
      _collegeController.text.trim(),
    );
    Get.to(CongratsStudent());
  }

  Future adduserDetails(
      String subject,
      String days,
      String salary,
      String email,
      String name,
      String gender,
      int phoneNumber,
      String age,
      String clas,
      String city,
      String address,
      String noOfStudent,
      String preferableTimes,
      String college,
      String isbooked) async {
    await FirebaseFirestore.instance.collection('studentsteacherreq').add({
      'subject': subject,
      'days': days,
      'salary': salary,
      'email': email,
      'name': name,
      'gender': gender,
      'phone_number': phoneNumber,
      'age': age,
      'class': clas,
      'city': city,
      'address': address,
      'no of student': noOfStudent,
      'preferable times': preferableTimes,
      'college': college,
      'isbooked': isbooked,
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
                  'টিউটর রিকুয়েস্ট',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),

                AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'শুধু লাল বক্সগুলো পুরণ কর ',
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

                const SizedBox(height: 20),
//first name fieldtext

                const SizedBox(height: 20),
// email textfield
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 0, 0)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextFormField(
                        controller: _daysController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'দিন',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
//confirm password text field
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 0, 0)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _salaryController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'বেতন (মাসিক কত বেতন দিতে চান)',
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
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 0, 0)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _subjectController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'বিষয় (আপনি কোন বিষয় পড়তে চান)',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 0, 0)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _noOfStudentController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'শিক্ষার্থীর সংখ্যা',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                          color: const Color.fromARGB(255, 255, 0, 0)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                        controller: _preferableTimeController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'কোন সময়টা হলে ভালো হবে ?',
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
                          hintText: 'ব্যবহারিক নাম ',
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
                          hintText: 'আপনি ছেলে না মেয়ে ?',
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
                          hintText: 'ফোন নাম্বার',
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
                          hintText: 'শ্রেণী',
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
                          hintText: 'City',
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
                          hintText: 'ঠিকানা',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
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
                        controller: _collegeController,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'কলেজ',
                        ),
                      ),
                    ),
                  ),
                ),
// password text field

                const SizedBox(height: 20),
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
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          // hintText: 'Pending',
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
                          'রিকুয়েস্ট',
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
