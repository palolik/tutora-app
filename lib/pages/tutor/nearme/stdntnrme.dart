// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:logsign/auth/auth_page.dart';
// import 'package:logsign/pages/getUserName.dart';

// class StudentReq extends StatefulWidget {
//   const StudentReq({Key? key}) : super(key: key);

//   @override
//   State<StudentReq> createState() => _StudentReqState();
// }

// class _StudentReqState extends State<StudentReq> {
//   final user = FirebaseAuth.instance.currentUser!;

//   List<String> docIds = [];

//   Future getDocId() async {
//     await FirebaseFirestore.instance
//         .collection('studentsteacherreq')
//         .orderBy('class')
//         .get()
//         .then((snapshot) => {
//               snapshot.docs.forEach((element) {
//                 docIds.add(element.reference.id);
//               })
//             });
//   }

//   @override
//   void initState() {
//     getDocId();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Tutions Near You"),
//         centerTitle: true,
//         backgroundColor: Colors.red,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Expanded(
//               child: StreamBuilder(
//                 builder: (context, snapshot) {
//                   return ListView.builder(
//                       itemCount: docIds.length,
//                       itemBuilder: ((context, index) {
//                         return ListTile(
//                           title: GetUserName(
//                             dcumentId: docIds[index],
//                           ),
//                         );
//                       }));
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
