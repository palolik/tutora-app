// import 'package:flutter/material.dart';
// import 'package:logsign/pages/ResetPassLink.dart';

// class DisplayProfileStudent extends StatefulWidget {
//   DisplayProfileStudent({Key? key}) : super(key: key);

//   @override
//   State<DisplayProfileStudent> createState() => _DisplayProfileStudentState();
// }

// class _DisplayProfileStudentState extends State<DisplayProfileStudent> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             "User Id: gfhf2323",
//             style: TextStyle(
//               fontSize: 18,
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 "Email : ag1229222@gmail.com",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 18,
//                 ),
//               ),
//               TextButton(onPressed: () {}, child: Text("Verify Email"))
//             ],
//           ),
//           Text("Created : 12/05/2022"),
//           SizedBox(
//             height: 10,
//           ),
//           ElevatedButton(
//             onPressed: () => {
//               Navigator.pushAndRemoveUntil(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ForgotPassPage(),
//                   ),
//                   (route) => false)
//             },
//             child: Text('Change Password'),
//             style: ElevatedButton.styleFrom(primary: Colors.blueGrey),
//           ),
//         ],
//       ),
//     );
//   }
// }
