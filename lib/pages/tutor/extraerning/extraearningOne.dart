import 'package:Tutora/pages/student/scholarship/ScholarshipForm.dart';
import 'package:Tutora/pages/tutor/extraerning/ExtraEarningTwo.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
import 'package:get/get.dart';

// import 'package:flutter/src/widgets/framework.dart';

//importing material design library

class ExtraEarning extends StatefulWidget {
  const ExtraEarning({Key? key}) : super(key: key);

  @override
  _ExtraEarningState createState() => _ExtraEarningState();
}

class _ExtraEarningState extends State<ExtraEarning> {
  bool? check1 = false;
  bool? check2 = false;
  bool? check3 = false;

  @override
//App widget tree
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return const Color.fromARGB(255, 243, 33, 33);
      }
      return const Color.fromARGB(255, 255, 0, 0);
    }

    return MaterialApp(
      home: Scaffold(
        //AppBar
        body: Center(
          /** Card Widget **/
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: 430,
                height: 700,
                child: Column(
                  children: [
                    Image.asset("assets/images/lader.gif"),
                    const Text(
                      'অতিরিক্ত আয়ের উপায়সমূহ',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 0, 0),
                          fontSize: 30), //TextStyle
                    ), //Text
                    const SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        const SizedBox(
                          width: 10,
                        ), //SizedBox
                        Checkbox(
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),

                            //only check box
                            value: check1, //unchecked
                            onChanged: (bool? value) {
                              //value returned when checkbox is clicked
                              setState(() {
                                check1 = value;
                              });
                            }),
                        const SizedBox(width: 10),
                        const Text(
                          ' ডেটা এন্ট্রি করে উপার্জন করুন। ',
                          style: TextStyle(fontSize: 18.0),
                        ), //Text

                        //SizedBox
                        /** Checkbox Widget **/
                      ], //<Widget>[]
                    ),
                    Row(
                      children: <Widget>[
                        const SizedBox(
                          width: 10,
                        ), //SizedBox
                        Checkbox(
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            //only check box
                            value: check2, //unchecked
                            onChanged: (bool? value) {
                              //value returned when checkbox is clicked
                              setState(() {
                                check2 = value;
                              });
                            }),
                        const SizedBox(width: 10),
                        Flexible(
                          child: const Text(
                            'মার্কেটিং এ অংশগ্রহণ করুন।',
                            style: TextStyle(fontSize: 19.0),
                          ),
                        ), //Text

                        //SizedBox
                        /** Checkbox Widget **/
                      ], //<Widget>[]
                    ),
                    Row(
                      children: <Widget>[
                        const SizedBox(
                          width: 10,
                        ), //SizedBox
                        Checkbox(
                            fillColor:
                                MaterialStateProperty.resolveWith(getColor),
                            //only check box
                            value: check3, //unchecked
                            onChanged: (bool? value) {
                              //value returned when checkbox is clicked
                              setState(() {
                                check3 = value;
                              });
                            }),
                        const SizedBox(width: 10),
                        Flexible(
                          child: const Text(
                            'ইউনিভার্সিটি এমব্যাসাডর হন ',
                            style: TextStyle(fontSize: 18.0),
                          ),
                        ), //Text

                        //SizedBox
                        /** Checkbox Widget **/
                      ], //<Widget>[]
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 0, 0),
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              fixedSize: const Size(180, 50)),
                          onPressed: () {
                            Get.to(const ExtraEarningTwo());
                          },
                          child: const Text(
                            "আবেদন",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ],
                ), //Column
              ), //SizedBox
            ), //Padding
          ), //Card
        ), //Center//Center
      ), //Scaffold
    ); //MaterialApp
  }
}
