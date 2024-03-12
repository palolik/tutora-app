import 'package:Tutora/pages/CircularProgress.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TutorName extends StatelessWidget {
  final String id;
  const TutorName({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference users =
        FirebaseFirestore.instance.collection('teachers');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(id).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return const Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;

          // return Text(
          //     "Full Name: ${data['coaching']} ${data['subject']} ${data['class']} ${data['address']}");
          return SafeArea(
            child: Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                height: 1000.0,
                // alignment: Alignment.topLeft,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: const Color.fromARGB(255, 255, 240, 240),
                        alignment: Alignment.center,
                        height: 150,
                        margin: const EdgeInsets.all(10.0),
                        width: double.infinity,
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Image.asset(
                                  "assets/images/tutorsdp.png",
                                  width: 100,
                                  height: 100,
                                ),
                                flex: 1,
                              ),
                              Expanded(
                                child: Container(
                                    margin: const EdgeInsets.all(10.0),
                                    height: 300,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 255, 240, 240)),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              'Name : ',
                                              style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 17,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Raleway'
                                                    'Hind Siliguri Regular',
                                              ),
                                            ),
                                            Flexible(
                                              child: Text(
                                                "${data['name']}",
                                                style: const TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 17,
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Raleway',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              'Classes:  ',
                                              style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 17,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Raleway',
                                              ),
                                            ),
                                            Flexible(
                                              child: Text(
                                                "${data['target student']}",
                                                style: const TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 17,
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                  fontWeight: FontWeight.normal,
                                                  fontFamily: 'Raleway',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const Text(
                                              'Subjects:  ',
                                              style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 17,
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Raleway',
                                              ),
                                            ),
                                            Flexible(
                                              child: Text(
                                                "${data['teaching subject']}",
                                                style: const TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  fontSize: 17,
                                                  color: Color.fromARGB(
                                                      255, 0, 0, 0),
                                                  fontWeight: FontWeight.normal,
                                                  fontFamily: 'Raleway',
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )),
                                flex: 2,
                              ),
                            ]),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Tutora feedback',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 22,
                                color: Color.fromARGB(255, 255, 0, 0),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            Text(
                              "${data['tutorafeedback']}",
                              style: const TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Raleway',
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Educational background',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 22,
                                color: Color.fromARGB(255, 247, 0, 0),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Raleway',
                              ),
                            ),
                            Row(
                              children: [
                                const Text(
                                  'University :  ',
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Raleway',
                                  ),
                                ),
                                Text(
                                  "${data['university']}",
                                  style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Raleway',
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Subject :  ',
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Raleway',
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    "${data['study subject']}",
                                    style: const TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Study year :  ',
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Raleway',
                                  ),
                                ),
                                Text(
                                  "${data['teaching year']}",
                                  style: const TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 17,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Raleway',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Personal Details',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 22,
                                      color: Color.fromARGB(255, 255, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Age :  ',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                  Text(
                                    "${data['age']}",
                                    style: const TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Religion :  ',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                  Text(
                                    "${data['religion']}",
                                    style: const TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Present Address :  ',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      "${data['tpressentadress']}",
                                      style: const TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 17,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'Raleway',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    child: const Text(
                                      'Permanent Address :  ',
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 17,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Raleway',
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "${data['tparmanentadress']}",
                                    style: const TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Experience :  ',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                  Flexible(
                                    child: Text(
                                      "${data['experience']}",
                                      style: const TextStyle(
                                        decoration: TextDecoration.none,
                                        fontSize: 17,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'Raleway',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ])),
          );

          // this bracket is the main braket
        }

        return const CircularProgress();
      },
    );
  }
}
