import 'dart:io';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:logsign/pages/CongratsStudent.dart';
import 'package:Tutora/pages/localdata.dart';
import 'package:Tutora/pages/student/CongratsStudent.dart';

class AddStudentPage extends StatefulWidget {
  const AddStudentPage({Key? key}) : super(key: key);

  @override
  _AddStudentPageState createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  final _formKey = GlobalKey<FormState>();

  var email = "";
  var userName = "";
  var Name = "";
  var gender = "";
  var religion = "";
  var phoneNumber = "";
  var age = "";
  var institution = "";
  var clas = "";
  var city = "";
  var address = "";
  var score = "";
  bool isComplete = false;

  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final emailController = TextEditingController();
  final userNameController = TextEditingController();
  final nameController = TextEditingController();
  final genderController = TextEditingController();
  final religionController = TextEditingController();
  final phoneController = TextEditingController();
  final ageController = TextEditingController();
  final institutionController = TextEditingController();
  final classController = TextEditingController();
  final cityController = TextEditingController();
  final addressController = TextEditingController();
  // final scoreController = TextEditingController();
  String? url;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    userNameController.dispose();
    nameController.dispose();
    genderController.dispose();
    religionController.dispose();
    phoneController.dispose();
    ageController.dispose();
    institutionController.dispose();
    classController.dispose();
    cityController.dispose();
    addressController.dispose();
    // scoreController.dispose();
    super.dispose();
  }

  // Adding Student
  CollectionReference pids = FirebaseFirestore.instance.collection('students');

  Future<void> addUser() async {
    final imgurl = await uploadImage(_image!);
    isComplete = true;
    return pids
        .add({
          'email': email,
          'user name': userName,
          'name': Name,
          'gender': gender,
          'religion': religion,
          'phone number': phoneNumber,
          'age': age,
          'institution': institution,
          'class': clas,
          'city': city,
          'adress': address,
          'image url': url,
          // 'score': score,
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
    userNameController.text = UserSharedPreference().getUserName() ?? "";
    institutionController.text =
        UserSharedPreference().getStudentInstitution() ?? "";
    classController.text = UserSharedPreference().getClassStudent() ?? "";
    ageController.text = UserSharedPreference().getAge() ?? "";
    phoneController.text = UserSharedPreference().getNumber() ?? "";
    religionController.text = UserSharedPreference().getReligion() ?? "";
    cityController.text = UserSharedPreference().getCity() ?? "";
    addressController.text = UserSharedPreference().getDetailsAddress() ?? "";
    emailController.text = UserSharedPreference().getEmail() ?? "";
    nameController.text = UserSharedPreference().getName() ?? "";
    genderController.text = UserSharedPreference().getGender() ?? "";

    url = UserSharedPreference().getImageStudent() ?? "";

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        centerTitle: true,
        title: const Text("আপনার প্রফাইল কমপ্লিট করুন"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ListView(
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
                                  color: const Color.fromARGB(255, 255, 0, 0))),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                const Color.fromARGB(
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
                  decoration: const InputDecoration(
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
                    labelText: 'ইউজার নেম ',
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
                  controller: userNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনার ইউজার নেম  দিন';
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
                    labelText: 'নাম',
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
                  controller: genderController,
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
                  controller: institutionController,
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
                    labelText: 'শ্রেণী',
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
                  controller: classController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনার শ্রেণী দিন';
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
                    labelText: 'আপনার শহরের নাম',
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
                  controller: cityController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনার শহরের নাম দিন';
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
                    labelText: 'ঠিকানা',
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
                  controller: addressController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'আপনার ঠিকানা দিন';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 0, 0),
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
                            userName = userNameController.text;
                            Name = nameController.text;
                            gender = genderController.text;
                            religion = religionController.text;
                            phoneNumber = phoneController.text;
                            age = ageController.text;
                            institution = institutionController.text;
                            clas = classController.text;
                            city = cityController.text;
                            address = addressController.text;
                            // score = scoreController.text;
                            addUser();

                            await UserSharedPreference()
                                .setUserName(userNameController.text);
                            await UserSharedPreference().setStudentInstitution(
                                institutionController.text);
                            await UserSharedPreference().setImageStudent(url!);
                            await UserSharedPreference()
                                .setAge(ageController.text);
                            await UserSharedPreference()
                                .setNumber(phoneController.text);
                            await UserSharedPreference()
                                .setCity(cityController.text);
                            await UserSharedPreference()
                                .setDetailsAddress(addressController.text);
                            await UserSharedPreference()
                                .setClassStudent(classController.text);
                            await UserSharedPreference()
                                .setName(nameController.text);
                            await UserSharedPreference()
                                .setReligion(religionController.text);
                            await UserSharedPreference()
                                .setEmail(emailController.text);
                            await UserSharedPreference()
                                .setGender(genderController.text);
                            // await UserSharedPreference()
                            //     .setScore(scoreController.text);
                            Get.to(const CongratsStudent());
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
