import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:Tutora/pages/student/PDF/Class7/PdfViewer7.dart';
import 'package:Tutora/pages/student/PDF/Class8/Agriculture/AgricultureView.dart';
import 'package:Tutora/pages/student/PDF/Class8/Bangla2nd/Bangla2View.dart';
import 'package:Tutora/pages/student/PDF/Class8/English2nd/English2View.dart';
import 'package:Tutora/pages/student/PDF/Class8/Hindu/HinduView.dart';
import 'package:Tutora/pages/student/PDF/Class8/ICT/IctView.dart';
import 'package:Tutora/pages/student/PDF/Class8/Islam/IslamView.dart';
import 'package:Tutora/pages/student/PDF/Class8/Math/MathView.dart';
import 'package:Tutora/pages/student/PDF/Class8/Science/ScienceView.dart';

class ClassEightSUb extends StatefulWidget {
  const ClassEightSUb({Key? key}) : super(key: key);

  @override
  State<ClassEightSUb> createState() => _ClassEightSUb();
}

class _ClassEightSUb extends State<ClassEightSUb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        title: Text("Choose Your Subject"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Bangla 1st Paper",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                              "Here all the help notes of Bangla 1st Paper is available"),
                          Container(
                            decoration: new BoxDecoration(
                              color: Color.fromARGB(255, 255, 0, 0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                            ),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    fixedSize: const Size(150, 50)),
                                onPressed: () {},
                                child: Text(
                                  "Open",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Bangla 2nd Paper",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                              "Here all the help notes of Bangla 2nd Paper is available"),
                          Container(
                            decoration: new BoxDecoration(
                              color: Color.fromARGB(255, 255, 0, 0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                            ),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    fixedSize: const Size(150, 50)),
                                onPressed: () {
                                  Get.to(Bangla2View());
                                },
                                child: Text(
                                  "Open",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "English 1st Paper",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                              "Here all the help notes of English 1st Paper is available"),
                          Container(
                            decoration: new BoxDecoration(
                              color: Color.fromARGB(255, 255, 0, 0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                            ),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    fixedSize: const Size(150, 50)),
                                onPressed: () {
                                  Get.to(English2View());
                                },
                                child: Text(
                                  "Open",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "English 2nd Paper",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                              "Here all the help notes of English 2nd Paper is available"),
                          Container(
                            decoration: new BoxDecoration(
                              color: Color.fromARGB(255, 255, 0, 0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                            ),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    fixedSize: const Size(150, 50)),
                                onPressed: () {
                                  Get.to(English2View());
                                },
                                child: Text(
                                  "Open",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Math",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                              "Here all the help notes of this subjects Math is available"),
                          Container(
                            decoration: new BoxDecoration(
                              color: Color.fromARGB(255, 255, 0, 0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                            ),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    fixedSize: const Size(150, 50)),
                                onPressed: () {
                                  Get.to(MathView());
                                },
                                child: Text(
                                  "Open",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Science",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                              "Here all the help notes of this subjects Science is available"),
                          Container(
                            decoration: new BoxDecoration(
                              color: Color.fromARGB(255, 255, 0, 0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                            ),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    fixedSize: const Size(150, 50)),
                                onPressed: () {
                                  Get.to(ScienceView());
                                },
                                child: Text(
                                  "Open",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "ICT",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                              "Here all the help notes of this subjects ICT is available"),
                          Container(
                            decoration: new BoxDecoration(
                              color: Color.fromARGB(255, 255, 0, 0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                            ),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    fixedSize: const Size(150, 50)),
                                onPressed: () {
                                  Get.to(IctView());
                                },
                                child: Text(
                                  "Open",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Agriculture",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                              "Here all the help notes of this subjects Agriculture is available"),
                          Container(
                            decoration: new BoxDecoration(
                              color: Color.fromARGB(255, 255, 0, 0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                            ),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    fixedSize: const Size(150, 50)),
                                onPressed: () {
                                  Get.to(AgricultureView());
                                },
                                child: Text(
                                  "Open",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Islam",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                              "Here all the help notes of this subjects Islam is available"),
                          Container(
                            decoration: new BoxDecoration(
                              color: Color.fromARGB(255, 255, 0, 0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                            ),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    fixedSize: const Size(150, 50)),
                                onPressed: () {
                                  Get.to(IslamView());
                                },
                                child: Text(
                                  "Open",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Hindu",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Text(
                              "Here all the help notes of this subjects Hindu is available"),
                          Container(
                            decoration: new BoxDecoration(
                              color: Color.fromARGB(255, 255, 0, 0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(18)),
                            ),
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    fixedSize: const Size(150, 50)),
                                onPressed: () {
                                  Get.to(HinduView());
                                },
                                child: Text(
                                  "Open",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
