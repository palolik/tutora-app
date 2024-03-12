import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetUserName extends StatelessWidget {
  final String id;
  const GetUserName({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference users =
        FirebaseFirestore.instance.collection('coachings');

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
            alignment: Alignment.center,
            child: Column(children: [
              Container(
                color: const Color.fromARGB(255, 255, 233, 233),
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
                          "assets/inimages/dp.png",
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
                                color: Color.fromARGB(255, 255, 233, 233)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "${data['coaching']}",
                                      style: TextStyle(
                                        fontSize: 22,
                                        color: const Color.fromARGB(
                                            255, 255, 0, 0),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Raleway',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "${data['address']}",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Raleway',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'classes:  ',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Raleway',
                                      ),
                                    ),
                                    Text(
                                      "${data['class']}",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'Raleway',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Subjects:  ',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Raleway',
                                      ),
                                    ),
                                    Text(
                                      "${data['subject']}",
                                      style: TextStyle(
                                        fontSize: 17,
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'Raleway',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Text(
                                      'Reviews:  ',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Raleway',
                                      ),
                                    ),
                                    const Text(
                                      '21  ',
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.normal,
                                        fontFamily: 'Raleway',
                                      ),
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: Color.fromARGB(255, 253, 0, 0),
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
            ]),
          ));
          // this bracket is the main braket
        }

        return const Text("loading");
      },
    );
  }
}
