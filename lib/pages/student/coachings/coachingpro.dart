import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:Tutora/pages/CircularProgress.dart';
// import 'packaTutorabase_core/firebase_core.dart';
import 'package:Tutora/pages/student/coachings/coachingproall.dart';
// import 'package:get/get.dart';

// import 'package:path/path.dart';

class ChochPro extends StatefulWidget {
  const ChochPro({Key? key}) : super(key: key);
  @override
  _ChochProState createState() => _ChochProState();
}

class _ChochProState extends State<ChochPro> {
  final Stream<QuerySnapshot> studentsStream =
      FirebaseFirestore.instance.collection('coachings').snapshots();
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
                        'কোচিং সেন্টার',
                        textAlign: TextAlign.center,
                        style: TextStyle(
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
                  SingleChildScrollView(
                    child: Container(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          for (var i = 0; i < storedocs.length; i++) ...[
                            Container(
                              color: const Color.fromARGB(255, 255, 233, 233),
                              alignment: Alignment.center,
                              height: 200,
                              margin: const EdgeInsets.all(10.0),
                              width: double.infinity,
                              child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Image.asset(
                                        "assets/images/coaching.png",
                                        width: double.infinity,
                                        height: double.infinity,
                                      ),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                          margin: const EdgeInsets.all(10.0),
                                          height: 150,
                                          decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 255, 233, 233)),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    storedocs[i]['coaching'],
                                                    style: const TextStyle(
                                                      fontSize: 22,
                                                      color: Color.fromARGB(
                                                          255, 255, 0, 0),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Raleway',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    storedocs[i]['address'],
                                                    style: const TextStyle(
                                                      fontSize: 17,
                                                      color: Color.fromARGB(
                                                          255, 0, 0, 0),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Raleway',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'শ্রেণীসমূহ:  ',
                                                    style: const TextStyle(
                                                      fontSize: 17,
                                                      color: Color.fromARGB(
                                                          255, 0, 0, 0),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Raleway',
                                                    ),
                                                  ),
                                                  Text(
                                                    storedocs[i]['class'],
                                                    style: const TextStyle(
                                                      fontSize: 17,
                                                      color: Color.fromARGB(
                                                          255, 0, 0, 0),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontFamily: 'Raleway',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  const Text(
                                                    'বিষয়:  ',
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      color: Color.fromARGB(
                                                          255, 0, 0, 0),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Raleway',
                                                    ),
                                                  ),
                                                  Text(
                                                    storedocs[i]['subject'],
                                                    style: const TextStyle(
                                                      fontSize: 17,
                                                      color: Color.fromARGB(
                                                          255, 0, 0, 0),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontFamily: 'Raleway',
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  const Text(
                                                    ' রিভিউ:  ',
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      color: Color.fromARGB(
                                                          255, 0, 0, 0),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontFamily: 'Raleway',
                                                    ),
                                                  ),
                                                  const Text(
                                                    '21  ',
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      color: Color.fromARGB(
                                                          255, 0, 0, 0),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontFamily: 'Raleway',
                                                    ),
                                                  ),
                                                  const Icon(
                                                    Icons.star,
                                                    color: Color.fromARGB(
                                                        255, 253, 0, 0),
                                                    size: 17.0,
                                                    semanticLabel:
                                                        'Text to announce in accessibility modes',
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
                                                            GetUserName(
                                                                id: storedocs[i]
                                                                    ['id']),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: const Text(
                                                      'আরও জানতে',
                                                      style: TextStyle(
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
