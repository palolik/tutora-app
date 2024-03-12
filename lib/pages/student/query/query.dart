import 'package:Tutora/pages/student/query/ans.dart';
import 'package:Tutora/pages/student/query/popQAStudent.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:get/get.dart';

class QueryStudent extends StatefulWidget {
  QueryStudent({Key? key}) : super(key: key);

  @override
  _QueryStudentState createState() => _QueryStudentState();
}

class _QueryStudentState extends State<QueryStudent> {
  final _formKey = GlobalKey<FormState>();

  var review = "";

  var username = "";
  var ans = "ans";
  int id = 1;
  // Create a text controller and use it to retrieve the current value
  // of the TextField.

  final reviewController = TextEditingController();

  final userController = TextEditingController();
  final ansController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.

    reviewController.dispose();

    userController.dispose();
    ansController.dispose();
    super.dispose();
  }

  clearText() {
    reviewController.clear();
    ansController.clear();
    userController.clear();
  }

  // Adding Student
  CollectionReference students = FirebaseFirestore.instance.collection('query');

  Future<void> addUser() {
    return students
        .add({'question': review, 'name': username, 'ans': ans, 'id': id++})
        .then((value) => print('Review Added'))
        .catchError((error) => print('Failed to Review user: $error'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("যেকোন জিজ্ঞাসা পেজ"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ListView(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Text(
                "যেকোন জিজ্ঞাসা",
                style: TextStyle(fontSize: 20),
              )),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    labelText: 'আপনার প্রশ্নটি এখানে লিখুন ',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: reviewController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Review';
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
                    labelText: 'আপনার নাম লিখুন',
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: userController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter user';
                    }
                    return null;
                  },
                ),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    'নিচের ফিল্ডটি আমরা পূরণ করব',
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
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    errorStyle:
                        TextStyle(color: Colors.redAccent, fontSize: 15),
                  ),
                  controller: ansController,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 0, 0),
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: TextButton(
                    style: TextButton.styleFrom(fixedSize: const Size(180, 50)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        setState(() {
                          review = reviewController.text;

                          username = userController.text;
                          ans = ansController.text;

                          addUser();
                          clearText();
                          Get.to(popQAStudent());
                        });
                      }
                    },
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 0, 0),
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: TextButton(
                    style: TextButton.styleFrom(fixedSize: const Size(180, 50)),
                    onPressed: () {
                      {
                        Get.to(ansQuery());
                      }
                    },
                    child: Text(
                      "কমন প্রশ্ন ও উত্তর",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
