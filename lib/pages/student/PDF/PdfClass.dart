import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:Tutora/pages/student/PDF/Class7/Class7Sub.dart';
import 'package:Tutora/pages/student/PDF/Class8/Class8Sub.dart';
import 'package:Tutora/pages/student/PDF/Hsc/HscSub.dart';
import 'package:Tutora/pages/student/PDF/Ssc/SscSub.dart';
import 'package:Tutora/pages/student/PDF/class6/Class6Sub.dart';

class PdfClass extends StatefulWidget {
  const PdfClass({Key? key}) : super(key: key);

  @override
  State<PdfClass> createState() => _PdfClassState();
}

class _PdfClassState extends State<PdfClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
        title: Text("Choose your Class"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
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
                        "Class 6 ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Here all the help notes of class 6 is available"),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 255, 0, 0),
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                        ),
                        child: TextButton(
                            style: TextButton.styleFrom(
                                fixedSize: const Size(150, 50)),
                            onPressed: () {
                              Get.to(ClassSixSUb());
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
                        "Class 7 ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Here all the help notes of class 6 is available"),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 255, 0, 0),
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                        ),
                        child: TextButton(
                            style: TextButton.styleFrom(
                                fixedSize: const Size(150, 50)),
                            onPressed: () {
                              Get.to(ClassSevenSUb());
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
                        "Class 8 ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Here all the help notes of class 6 is available"),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 255, 0, 0),
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                        ),
                        child: TextButton(
                            style: TextButton.styleFrom(
                                fixedSize: const Size(150, 50)),
                            onPressed: () {
                              Get.to(ClassEightSUb());
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
                        "Ssc ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Here all the help notes of class 6 is available"),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 255, 0, 0),
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                        ),
                        child: TextButton(
                            style: TextButton.styleFrom(
                                fixedSize: const Size(150, 50)),
                            onPressed: () {
                              Get.to(SscSub());
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
                        "Hsc",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Here all the help notes of class 6 is available"),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 255, 0, 0),
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                        ),
                        child: TextButton(
                            style: TextButton.styleFrom(
                                fixedSize: const Size(150, 50)),
                            onPressed: () {
                              Get.to(HSCSUb());
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
                        "Addmission",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Here all the help notes of class 6 is available"),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(255, 255, 0, 0),
                          borderRadius: BorderRadius.all(Radius.circular(18)),
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
          ],
        ),
      ),
    );
  }
}
