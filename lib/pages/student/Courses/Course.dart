import 'package:Tutora/pages/ComingSoon.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:Tutora/pages/CircularProgress.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:logsign/pages/student/coachings/coachingproall.dart';
// import 'package:get/get.dart';
import 'package:Tutora/pages/student/tutors/tutorproall.dart';

// import 'package:path/path.dart';

class Course extends StatefulWidget {
  const Course({Key? key}) : super(key: key);
  @override
  _CourseState createState() => _CourseState();
}

class _CourseState extends State<Course> {
  final Stream<QuerySnapshot> studentsStream =
      FirebaseFirestore.instance.collection('courses').snapshots();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: studentsStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            // print('Something went Wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgress();
          }

          final List storedocs = [];
          snapshot.data!.docs.map((DocumentSnapshot document) {
            Map a = document.data() as Map<String, dynamic>;
            storedocs.add(a);
            a['id'] = document.id;
          }).toList();

          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: double.infinity,
                      child: const Text(
                        'All Courses',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Raleway',
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 0, 0),
                          border: Border.all(
                              color: const Color.fromARGB(255, 192, 0, 0),
                              width: 1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)))),
                  Container(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    alignment: Alignment.center,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          for (var i = 0; i < storedocs.length; i++) ...[
                            Container(
                              color: const Color.fromARGB(255, 255, 233, 233),
                              alignment: Alignment.center,
                              height: 210,
                              margin: const EdgeInsets.all(10.0),
                              width: double.infinity,
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Image.asset(
                                        "assets/images/ictCourse.png",
                                        width: double.infinity,
                                        height: double.infinity,
                                      ),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                          margin: const EdgeInsets.all(10.0),
                                          height: 200,
                                          decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 255, 233, 233)),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      storedocs[i]
                                                          ['course name'],
                                                      style: const TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 22,
                                                        color: Color.fromARGB(
                                                            255, 255, 0, 0),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: 'Raleway',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Flexible(
                                                    child: Text(
                                                      storedocs[i][
                                                          'course description'],
                                                      style: const TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 17,
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: 'Raleway',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  const Flexible(
                                                    child: Text(
                                                      'Course Instructors :  ',
                                                      style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 17,
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: 'Raleway',
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Text(
                                                      storedocs[i][
                                                          'course instructors'],
                                                      style: const TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 17,
                                                        color: Color.fromARGB(
                                                            255, 0, 0, 0),
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontFamily: 'Raleway',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Flexible(
                                                child: GestureDetector(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            // UpdateStudentPage(
                                                            ComingSoon(),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: const Text(
                                                      'Details',
                                                      style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        fontSize: 18,
                                                        color: Color.fromARGB(
                                                            255, 255, 0, 0),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontFamily: 'Raleway',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )),
                                      flex: 2,
                                    ),
                                  ]),
                            ),
                          ]
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
