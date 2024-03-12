import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:Tutora/pages/CircularProgress.dart';
import 'package:Tutora/pages/student/coachings/coachingproall.dart';
import 'package:get/get.dart';
import 'package:Tutora/pages/student/tutors/tutorproall.dart';

import 'package:path/path.dart';

class ansQuery extends StatefulWidget {
  ansQuery({Key? key}) : super(key: key);
  @override
  _ansQueryState createState() => _ansQueryState();
}

class _ansQueryState extends State<ansQuery> {
  final Stream<QuerySnapshot> studentsStream =
      FirebaseFirestore.instance.collection('query').snapshots();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: studentsStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            // print('Something went Wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgress(),
            );
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
                        'কমন প্রশ্ন ও উত্তর ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Raleway' 'Hind Siliguri Regular',
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 0, 0),
                          border: Border.all(
                              color: Color.fromARGB(255, 192, 0, 0), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                  SingleChildScrollView(
                    child: Container(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          for (var i = 0; i < storedocs.length; i++) ...[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    color: const Color.fromARGB(
                                        255, 255, 233, 233),
                                    alignment: Alignment.center,
                                    // height: 250,
                                    margin: const EdgeInsets.all(10.0),
                                    width: double.infinity,
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Container(
                                                margin:
                                                    const EdgeInsets.all(10.0),
                                                // height: 250,
                                                decoration: const BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 255, 233, 233)),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Flexible(
                                                          child: Text(
                                                            'নামঃ ${storedocs[i]['name']}',
                                                            style:
                                                                const TextStyle(
                                                              decoration:
                                                                  TextDecoration
                                                                      .none,
                                                              fontSize: 18,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      255,
                                                                      0,
                                                                      0),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontFamily:
                                                                  'Raleway',
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'প্রশ্নঃ  ',
                                                          style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                            fontSize: 16,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    0),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily:
                                                                'Raleway',
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Text(
                                                            storedocs[i]
                                                                ['question'],
                                                            style:
                                                                const TextStyle(
                                                              decoration:
                                                                  TextDecoration
                                                                      .none,
                                                              fontSize: 16,
                                                              color: Color
                                                                  .fromARGB(255,
                                                                      0, 0, 0),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontFamily:
                                                                  'Raleway',
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          'উত্তরঃ  ',
                                                          style: TextStyle(
                                                            decoration:
                                                                TextDecoration
                                                                    .none,
                                                            fontSize: 16,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    0,
                                                                    0,
                                                                    0),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily:
                                                                'Raleway',
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Text(
                                                            storedocs[i]['ans'],
                                                            style:
                                                                const TextStyle(
                                                              decoration:
                                                                  TextDecoration
                                                                      .none,
                                                              fontSize: 16,
                                                              color: Color
                                                                  .fromARGB(255,
                                                                      0, 0, 0),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontFamily:
                                                                  'Raleway',
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )),
                                            // flex: 10,
                                          ),
                                        ]),
                                  ),
                                ),
                              ),
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
