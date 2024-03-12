import 'package:Tutora/pages/CircularProgress.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:Tutora/pages/localdata.dart';

class GetUserName extends StatefulWidget {
  final String id;
  const GetUserName({Key? key, required this.id}) : super(key: key);

  @override
  State<GetUserName> createState() => _GetUserNameState();
}

class _GetUserNameState extends State<GetUserName> {
  final _formKey = GlobalKey<FormState>();

  var cname = "";
  var review = "";
  var stars = "";
  var username = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.

  final cnameController = TextEditingController();
  final reviewController = TextEditingController();
  final starsController = TextEditingController();
  final userController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    cnameController.dispose();
    reviewController.dispose();
    starsController.dispose();
    userController.dispose();
    super.dispose();
  }

  clearText() {
    cnameController.clear();
    reviewController.clear();
    starsController.clear();
    userController.clear();
  }

  CollectionReference students =
      FirebaseFirestore.instance.collection('coachingreview');

  Future<void> addUser() {
    return students
        .add({
          'cname': cname,
          'review': review,
          'stars': stars,
          'username': username
        })
        .then((value) => print('Review Added'))
        .catchError((error) => print('Failed to Review user: $error'));
  }

  @override
  void initState() {
    // TODO: implement initState

    setState(() {
      stars = starsController.text;
      review = reviewController.text;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    CollectionReference users =
        FirebaseFirestore.instance.collection('coachings');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(widget.id).get(),
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
          return Material(
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      // height: ,
                      color: const Color.fromARGB(255, 255, 255, 255),

                      // alignment: Alignment.topLeft,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              color: const Color.fromARGB(255, 253, 179, 179),
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
                                                  255, 253, 179, 179)),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "${data['coaching']}",
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
                                                    "${data['address']}",
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
                                                    'Classes:  ',
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
                                                    "${data['class']}",
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
                                                  Text(
                                                    'Subjects:  ',
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
                                                    "${data['subject']}",
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
                                                  Text(
                                                    'Reviews:  ',
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
                                                    '21  ',
                                                    style: const TextStyle(
                                                      fontSize: 17,
                                                      color: Color.fromARGB(
                                                          255, 0, 0, 0),
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontFamily: 'Raleway',
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: const Color.fromARGB(
                                                        255, 253, 0, 0),
                                                    size: 17.0,
                                                    semanticLabel:
                                                        'Text to announce in accessibility modes',
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
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Establishment:  ',
                                    style: const TextStyle(
                                      fontSize: 22,
                                      color: Color.fromARGB(255, 255, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                  Text(
                                    "${data['establishment']}",
                                    style: const TextStyle(
                                      fontSize: 22,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                children: [
                                  Text(
                                    'Total students:  ',
                                    style: const TextStyle(
                                      fontSize: 22,
                                      color: Color.fromARGB(255, 247, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                  Text(
                                    "${data['tstudent']}",
                                    style: const TextStyle(
                                      fontSize: 22,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Teachers :  ',
                                        style: const TextStyle(
                                          fontSize: 22,
                                          color: Color.fromARGB(255, 255, 0, 0),
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Raleway',
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "${data['teacher1']}",
                                    style: const TextStyle(
                                      fontSize: 22,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                  Text(
                                    "${data['teacher1sub']}",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                  Text(
                                    "${data['teacher1u']}",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Raleway',
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(02.0),
                              child: Row(
                                children: [
                                  const Text(
                                    'Batch Times :  ',
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 255, 0, 0),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                  Text(
                                    "${data['time1']}",
                                    style: const TextStyle(
                                      fontSize: 17,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'Raleway',
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Review()
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          );

          // this bracket is the main braket
        }

        return const CircularProgress();
      },
    );
  }
}
