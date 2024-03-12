import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:Tutora/pages/student/rewords/RewordThree.dart';

import 'package:path/path.dart';

class RewordTwo extends StatefulWidget {
  RewordTwo({Key? key}) : super(key: key);
  @override
  _RewordTwoState createState() => _RewordTwoState();
}

class _RewordTwoState extends State<RewordTwo> {
  final Stream<QuerySnapshot> studentsStream =
      FirebaseFirestore.instance.collection('rewordtask').snapshots();
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
                    children: [
                      Container(
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 0, 0),
                              border: Border.all(
                                  color: Color.fromARGB(255, 192, 0, 0),
                                  width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Flexible(
                                    child: GestureDetector(
                                      onTap: () {
                                        Get.to(RewordThree());
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Container(
                                            height: 50,
                                            width: 100,
                                            padding: EdgeInsets.all(5),
                                            margin: EdgeInsets.all(5),
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color.fromARGB(
                                                      255, 255, 0, 0),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                gradient: LinearGradient(
                                                    begin: Alignment.topCenter,
                                                    end: Alignment.bottomCenter,
                                                    colors: [
                                                      Color.fromARGB(
                                                          255, 255, 0, 0),
                                                      Color.fromARGB(
                                                          255, 190, 0, 0)
                                                    ]),
                                                boxShadow: [
                                                  BoxShadow(
                                                      blurRadius: .5,
                                                      offset: Offset(1.0, 1.0))
                                                ]),
                                            child: Text(
                                              'Rewords',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255),
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Raleway',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          'Points',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Raleway',
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 50,
                                        width: 100,
                                        padding: EdgeInsets.all(5),
                                        margin: EdgeInsets.all(5),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color.fromARGB(
                                                  255, 255, 0, 0),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            gradient: LinearGradient(
                                                begin: Alignment.topCenter,
                                                end: Alignment.bottomCenter,
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  Color.fromARGB(
                                                      255, 255, 220, 220)
                                                ]),
                                            boxShadow: [
                                              BoxShadow(
                                                  blurRadius: .5,
                                                  offset: Offset(1.0, 1.0))
                                            ]),
                                        child: Text(
                                          '1000',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Raleway',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ])),
                    ],
                  ),
                  Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                    height: 1000.0,
                    child: Column(
                      children: [
                        for (var i = 0; i < storedocs.length; i++) ...[
                          Container(
                            height: 150,
                            margin: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color.fromARGB(255, 200, 0, 0),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      // Color.fromARGB(255, 246, 111, 111),
                                      Color.fromARGB(255, 250, 160, 160),
                                      Color.fromARGB(255, 253, 118, 118)
                                    ]),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey,
                                      blurRadius: 2.0,
                                      offset: Offset(2.0, 2.0))
                                ]),
                            width: double.infinity,
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    child: Text(
                                      storedocs[i]['task'],
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      storedocs[i]['link'],
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 116, 160, 255),
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.all(10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Color.fromARGB(
                                                  255, 255, 225, 0),
                                              size: 20.0,
                                            ),
                                            Text(
                                              storedocs[i]['points'],
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontSize: 20,
                                              ),
                                            ),
                                          ]))
                                ]),
                          ),
                        ]
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
