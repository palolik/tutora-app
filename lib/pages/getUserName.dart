// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:Tutora/pages/tutor/nearme/PayForDetails.dart';

class GetUserName extends StatelessWidget {
  const GetUserName({
    Key? key,
    required this.dcumentId,
  }) : super(key: key);

  final String dcumentId;

  @override
  Widget build(BuildContext context) {
    CollectionReference students =
        FirebaseFirestore.instance.collection('studentsteacherreq');
    return FutureBuilder<DocumentSnapshot>(
        future: students.doc(dcumentId).get(),
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(),
                child: Card(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Text('Class: ${data['class']}'),
                      Text('Salary: ${data['salary']}'),
                      Text('Days: ${data['days']}'),
                      Text('Subject: ${data['subject']}'),
                      Text('Address : ${data['address']}'),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 90.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PayForDetails()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 0, 0),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Center(
                              child: Text(
                                'Details',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),
            );
          }
          return const CircularProgressIndicator();
        }));
  }
}
