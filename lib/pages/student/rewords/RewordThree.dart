// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:logsign/pages/student/coachings/coachingproall.dart';
// import 'package:get/get.dart';

// import 'package:path/path.dart';

// class RewordThree extends StatefulWidget {
//   const RewordThree({Key? key}) : super(key: key);

//   @override
//   State<RewordThree> createState() => _RewordThreeState();
// }

// class _RewordThreeState extends State<RewordThree> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromRGBO(255, 255, 255, 1),
//       body: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             Container(
//               child: Text(
//                 'Rewords',
//                 style: TextStyle(
//                     color: Color.fromARGB(255, 255, 255, 255), fontSize: 25),
//               ),
//               height: 100,
//               alignment: Alignment.center,
//               width: double.infinity,
//               color: Color.fromARGB(255, 254, 0, 0),
//             ),

//             Container(
//               child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: <Widget>[
//                     Container(
//                         decoration: BoxDecoration(
//                             color: Color.fromARGB(255, 255, 250, 250),
//                             border: Border.all(
//                                 color: Color.fromARGB(255, 192, 0, 0),
//                                 width: 3),
//                             borderRadius: BorderRadius.all(Radius.circular(5))),
//                         alignment: Alignment.center,
//                         height: 150,
//                         margin: const EdgeInsets.all(10.0),
//                         child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Expanded(
//                                 child: Image.asset(
//                                   "assets/inimages/11.png",
//                                   width: double.infinity,
//                                   height: double.infinity,
//                                   alignment: Alignment.centerLeft,
//                                 ),
//                                 flex: 1,
//                               ),
//                               Expanded(
//                                   child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: [
//                                   Text(
//                                     'Level 1',
//                                     style: TextStyle(
//                                         fontSize: 20,
//                                         color: Color.fromARGB(255, 255, 0, 0),
//                                         fontWeight: FontWeight.bold),
//                                   ),
//                                   Text('250 discount on rokomari',
//                                       style: TextStyle(
//                                         fontSize: 18,
//                                         color: Color.fromARGB(255, 92, 92, 92),
//                                       )),
//                                   Flexible(
//                                     child: GestureDetector(
//                                       onTap: () {},
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                           border: Border.all(
//                                             width: 8,
//                                           ),
//                                           borderRadius:
//                                               BorderRadius.circular(12),
//                                         ),
//                                         alignment: Alignment.bottomLeft,
//                                         child: Text(
//                                           'Claim Reword',
//                                           style: TextStyle(
//                                             fontSize: 18,
//                                             color:
//                                                 Color.fromARGB(255, 255, 0, 0),
//                                             fontWeight: FontWeight.bold,
//                                             fontFamily: 'Raleway',
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ))
//                             ])),
//                   ]),
//             ),
//           ]),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:Tutora/pages/student/rewords/RewordThree.dart';

import 'package:path/path.dart';

class RewordThree extends StatefulWidget {
  RewordThree({Key? key}) : super(key: key);
  @override
  _RewordThreeState createState() => _RewordThreeState();
}

class _RewordThreeState extends State<RewordThree> {
  final Stream<QuerySnapshot> studentsStream =
      FirebaseFirestore.instance.collection('rewordslist').snapshots();
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
                children: <Widget>[
                  Column(
                    children: [],
                  ),
                  Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                    height: 1000.0,
                    child: Column(children: [
                      for (var i = 0; i < storedocs.length; i++) ...[
                        Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                              Container(
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 255, 250, 250),
                                      border: Border.all(
                                          color: Color.fromARGB(255, 192, 0, 0),
                                          width: 3),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  alignment: Alignment.center,
                                  height: 150,
                                  margin: const EdgeInsets.all(10.0),
                                  child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Image.asset(
                                            "assets/inimages/11.png",
                                            width: double.infinity,
                                            height: double.infinity,
                                            alignment: Alignment.centerLeft,
                                          ),
                                          flex: 1,
                                        ),
                                        Expanded(
                                            child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              storedocs[i]['level'],
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Color.fromARGB(
                                                      255, 255, 0, 0),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(storedocs[i]['price'],
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color.fromARGB(
                                                      255, 92, 92, 92),
                                                )),
                                            Text(storedocs[i]['points'],
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color.fromARGB(
                                                      255, 92, 92, 92),
                                                )),
                                            Flexible(
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: Container(
                                                  height: 80,
                                                  width: 200,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      width: 2,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    'Claim Reword',
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
                                        ))
                                      ])),
                            ]))
                      ],
                    ]),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
