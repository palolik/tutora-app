// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// import 'package:flutter/material.dart';
// import 'package:logsign/pages/NoOfUsers.dart';

// class NotificationWidget extends StatefulWidget {
//   const NotificationWidget({Key? key}) : super(key: key);

//   @override
//   State<NotificationWidget> createState() => _NotificationWidgetState();
// }

// class _NotificationWidgetState extends State<NotificationWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//       children: [
//         SizedBox(
//           height: 20,
//         ),
//         // GestureDetector(
//         //     onTap: () {}, child: Icon(Icons.notification_add_rounded)),
//         // NoOfUser(),

//         Container(
//           height: 150,
//           width: double.infinity,
//           // color: Color.fromARGB(255, 255, 163, 163),
//           padding: EdgeInsets.all(5),
//           margin: EdgeInsets.all(5),
//           decoration: BoxDecoration(
//               border: Border.all(
//                 color: Color.fromARGB(255, 255, 0, 0),
//                 width: 1.0,
//               ),
//               borderRadius: BorderRadius.circular(10.0),
//               gradient: LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   colors: [
//                     Color.fromARGB(255, 255, 180, 180),
//                     Color.fromARGB(255, 255, 221, 221)
//                   ]),
//               boxShadow: [BoxShadow(blurRadius: .5, offset: Offset(1.0, 1.0))]),
//           child: Text('asdsa'),
//         ),
//    ],
//     ));
//   }
// }
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:Tutora/pages/CircularProgress.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:logsign/pages/student/coachings/coachingproall.dart';
// import 'package:get/get.dart';

// import 'package:path/path.dart';

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({Key? key}) : super(key: key);
  @override
  _NotificationWidgetState createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  final Stream<QuerySnapshot> studentsStream = FirebaseFirestore.instance
      .collection('notifications')
      .orderBy('id', descending: true)
      .snapshots();
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
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "Notifactions",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  for (var i = 0; i < storedocs.length; i++) ...[
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 150,
                      width: double.infinity,
                      // color: Color.fromARGB(255, 255, 163, 163),
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 255, 183, 183),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromARGB(255, 254, 229, 229),
                                Color.fromARGB(255, 250, 204, 204),
                                Color.fromARGB(255, 254, 229, 229)
                              ]),
                          boxShadow: [
                            const BoxShadow(
                                blurRadius: .5, offset: Offset(1.0, 1.0))
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              storedocs[i]['studentnotification'],
                              overflow: TextOverflow.visible,
                              style: const TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Raleway',
                              ),
                            ),
                          ),
                          Text(
                            storedocs[i]['date'],
                            style: const TextStyle(
                              fontSize: 17,
                              color: Color.fromARGB(255, 255, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Raleway',
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ],
              ),
            ),
          );
        });
  }
}
