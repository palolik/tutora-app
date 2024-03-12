import 'package:Tutora/pages/ComingSoon.dart';
import 'package:Tutora/pages/student/PDF/Hsc/Biology2nd/AgricultureView.dart';
import 'package:Tutora/pages/student/PDF/Hsc/Biology1st/Bangla2View.dart';
import 'package:Tutora/pages/student/PDF/Hsc/Chemistry1st/ScienceView.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Tutora/pages/student/PDF/Class8/Hindu/HinduView.dart';
import 'package:Tutora/pages/student/PDF/Hsc/Math2nd/English1View.dart';
import 'package:Tutora/pages/student/PDF/Hsc/Chemistry2nd/English2View.dart';
import 'package:Tutora/pages/student/PDF/Hsc/ICT/IctView.dart';
import 'package:Tutora/pages/student/PDF/Hsc/Math1st/MathView.dart';

class HSCSUb extends StatefulWidget {
  const HSCSUb({Key? key}) : super(key: key);

  @override
  State<HSCSUb> createState() => _HSCSUb();
}

class _HSCSUb extends State<HSCSUb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        title: Text("তোমার বিষয় নির্বাচন কর"),
        centerTitle: true,
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
                            "উদ্ভিদবিজ্ঞান",
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
                            "প্রাণিবিজ্ঞান",
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
                            "উচ্চতর গণিত ২য় পত্র",
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
                                  Get.to(English1View());
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
                            "রসায়ন ১ম পত্র",
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
                            "উচ্চতর গণিত ১ম পত্র",
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
                            "রসায়ন ২য় পত্র",
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
                            "আইসিটি",
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
                            "পদার্থবিজ্ঞান ১ম পত্র",
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
                                  Get.to(ComingSoon());
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
                            "পদার্থবিজ্ঞান ২য় পত্র",
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
                                  Get.to(ComingSoon());
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
                            "বাংলা ১ম পত্র",
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
                                  Get.to(ComingSoon());
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
