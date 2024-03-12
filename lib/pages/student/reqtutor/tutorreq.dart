import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

// class Reqtutors extends StatefulWidget {
//   Reqtutors({Key? key}) : super(key: key);

//   @override
//   _ReqtutorsState createState() => _ReqtutorsState();
// }

// class _ReqtutorsState extends State<Reqtutors> {
//   final _formKey = GlobalKey<FormState>();
//    final List<String> items = [
//     'Item1',
//     'Item2',
//     'Item3',
//     'Item4',
//     'Item5',
//     'Item6',
//     'Item7',
//     'Item8',
//   ];
//   String? selectedValue;

//   var cname = "";
//   var review = "";
//   var stars = "";
//   var username = "";
//   // Create a text controller and use it to retrieve the current value
//   // of the TextField.
//   final cnameController = TextEditingController();
//   final reviewController = TextEditingController();
//   final starsController = TextEditingController();
//   final userController = TextEditingController();

//   @override
//   void dispose() {
//     // Clean up the controller when the widget is disposed.
//     cnameController.dispose();
//     reviewController.dispose();
//     starsController.dispose();
//     userController.dispose();
//     super.dispose();
//   }

//   clearText() {
//     cnameController.clear();
//     reviewController.clear();
//     starsController.clear();
//     userController.clear();
//   }

//   // Adding Student
//   CollectionReference students =
//       FirebaseFirestore.instance.collection('coachingreview');

//   Future<void> addUser() {
//     return students
//         .add({
//           'cname': cname,
//           'review': review,
//           'stars': stars,
//           'username': username
//         })
//         .then((value) => print('Review Added'))
//         .catchError((error) => print('Failed to Review user: $error'));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         key: _formKey,
//         child: Padding(
//           padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
//           child: ListView(
//             children: [
//               Container(
//                 margin: EdgeInsets.symmetric(vertical: 10.0),
//                 child: TextFormField(
//                   autofocus: false,
//                   decoration: InputDecoration(
//                     labelText: 'Coaching Name: ',
//                     labelStyle: TextStyle(fontSize: 15.0),
//                     border: OutlineInputBorder(),
//                     errorStyle:
//                         TextStyle(color: Colors.redAccent, fontSize: 15),
//                   ),
//                   controller: cnameController,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please Enter Coaching Name';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(vertical: 10.0),
//                 child: TextFormField(
//                   autofocus: false,
//                   decoration: InputDecoration(
//                     labelText: 'Review: ',
//                     labelStyle: TextStyle(fontSize: 20.0),
//                     border: OutlineInputBorder(),
//                     errorStyle:
//                         TextStyle(color: Colors.redAccent, fontSize: 15),
//                   ),
//                   controller: reviewController,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please Enter Review';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(vertical: 10.0),
//                 child: TextFormField(
//                   autofocus: false,
//                   decoration: InputDecoration(
//                     labelText: 'Stars: ',
//                     labelStyle: TextStyle(fontSize: 20.0),
//                     border: OutlineInputBorder(),
//                     errorStyle:
//                         TextStyle(color: Colors.redAccent, fontSize: 15),
//                   ),
//                   controller: starsController,
//                   // validator: (stars) {
//                   //   if (stars == null || stars.isEmpty) {
//                   //     return 'Please Enter stars';
//                   //   }
//                   //   return null;
//                   // },
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.symmetric(vertical: 10.0),
//                 child: TextFormField(
//                   autofocus: false,
//                   decoration: InputDecoration(
//                     labelText: 'Username: ',
//                     labelStyle: TextStyle(fontSize: 20.0),
//                     border: OutlineInputBorder(),
//                     errorStyle:
//                         TextStyle(color: Colors.redAccent, fontSize: 15),
//                   ),
//                   controller: userController,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please Enter user';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               Container(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         // Validate returns true if the form is valid, otherwise false.
//                         if (_formKey.currentState!.validate()) {
//                           setState(() {
//                             cname = cnameController.text;
//                             review = reviewController.text;
//                             stars = starsController.text;
//                             username = userController.text;
//                             addUser();
//                             clearText();
//                           });
//                         }
//                       },
//                       child: Text(
//                         'Submit',
//                         style: TextStyle(fontSize: 18.0),
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class Mutt extends StatelessWidget {
  const Mutt({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'DropdownButton2 Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Text('Subject'),
            DropdownButtonHideUnderline(
              child: DropdownButton2(
                // hint: Text(
                //   ,
                //   style: TextStyle(
                //     fontSize: 14,
                //     color: Theme.of(context).hintColor,
                //   ),
                // ),
                items: items
                    .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                    .toList(),
                value: selectedValue,
                onChanged: (value) {
                  setState(() {
                    selectedValue = value as String;
                  });
                },
                buttonHeight: 40,
                buttonWidth: 140,
                itemHeight: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
