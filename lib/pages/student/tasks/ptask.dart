import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:Tutora/pages/student/coachings/coachingproall.dart';
import 'package:get/get.dart';

import 'package:path/path.dart';

class Tester extends StatefulWidget {
  Tester({Key? key}) : super(key: key);
  @override
  _TesterState createState() => _TesterState();
}

class _TesterState extends State<Tester> {
  String rup = "";
  int score = 0;
  late var str;
  void changeans(storedoc) {
    setState(() {
      rup = storedoc;
    });
  }

  final Stream<QuerySnapshot> studentsStream =
      FirebaseFirestore.instance.collection('tasks').snapshots();
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: studentsStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            print('Something went Wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
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
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: double.infinity,
                      child: const Text(
                        'আমি আমার আমিকে চিরদিন',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Raleway',
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 0, 0),
                          border: Border.all(
                              color: Color.fromARGB(255, 192, 0, 0), width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                  Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                    height: 1000.0,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        for (var i = 0; i < storedocs.length; i++) ...[
                          Container(
                            color: Color.fromARGB(255, 255, 233, 233),
                            alignment: Alignment.center,
                            height: 150,
                            margin: const EdgeInsets.all(10.0),
                            width: double.infinity,
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
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
                                                  storedocs[i]['Q'],
                                                  style: TextStyle(
                                                    fontSize: 22,
                                                    color: Color.fromARGB(
                                                        255, 255, 0, 0),
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Raleway',
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Flexible(
                                              child: GestureDetector(
                                                onTap: () {
                                                  // var str = storedocs[i]['1'];

                                                  print("1 answer");
                                                  changeans(storedocs[i]['1']);
                                                },
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      storedocs[i]['1'],
                                                      style: TextStyle(
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
                                              ),
                                            ),
                                            Flexible(
                                              child: GestureDetector(
                                                onTap: () {
                                                  print("2 answer");
                                                  changeans(storedocs[i]['2']);
                                                },
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      storedocs[i]['2'],
                                                      style: TextStyle(
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
                                              ),
                                            ),
                                            Flexible(
                                              child: GestureDetector(
                                                onTap: () {
                                                  print("3 answer");
                                                  changeans(storedocs[i]['3']);
                                                },
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      storedocs[i]['3'],
                                                      style: TextStyle(
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
                                              ),
                                            ),
                                            Flexible(
                                              child: GestureDetector(
                                                onTap: () {
                                                  print("4 answer");
                                                  changeans(storedocs[i]['4']);
                                                },
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      storedocs[i]['4'],
                                                      style: TextStyle(
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
                                              ),
                                            ),
                                            Flexible(
                                              child: GestureDetector(
                                                onTap: () {
                                                  String rubi =
                                                      storedocs[i]['A'];
                                                  print(rup);
                                                  if (rubi == rup) {
                                                    print("right answer");
                                                    score++;
                                                  } else {
                                                    print("wrong answer");
                                                  }
                                                },
                                                child: Container(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Text(
                                                    'Done',
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
                        ], // condition ends here
                        Flexible(
                          child: GestureDetector(
                            onTap: () {
                              print(score);
                              showAlertDialog(context);
                              // print('asdsdas');
                              // const AlertDialog(
                              //     title: Text("Sample Alert Dialog"));
                            },
                            child: Container(
                              alignment: Alignment.topCenter,
                              child: Text(
                                'finish',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 255, 0, 0),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Raleway',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
//   class MyAlert extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: ElevatedButton(
//         child: Text('Show alert'),
//         onPressed: () {
//           showAlertDialog(context);
//         },
//       ),
//     );
//   }
// }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = ElevatedButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget reButton = ElevatedButton(
      child: Text("Reset"),
      onPressed: () {
        Navigator.pop(context);
        setState(() {
          score = 0;
        });
      },
    );

    // Create AlertDialog

    AlertDialog alert = AlertDialog(
      title: Text("Simple Alert"),
      content: Text("Score is $score"),
      actions: [reButton, okButton],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
