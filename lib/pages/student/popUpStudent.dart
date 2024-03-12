import 'package:Tutora/pages/student/usermain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class PopUpStudent extends StatefulWidget {
  const PopUpStudent({Key? key}) : super(key: key);

  @override
  State<PopUpStudent> createState() => _PopUpStudentState();
}

class _PopUpStudentState extends State<PopUpStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AlertDialog(
                title: Center(
                  child: const Text(
                    "Warning!",
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                ),
                content: Column(
                  children: [
                    Text(
                      "প্রথমে নিজের প্রোফাইল পুরন করুন , অন্যথায় আপনি অ্যাপের সব ফিচার উপভোগ করতে পারবেন না",
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(255, 255, 0, 0),
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: TextButton(
                          style: TextButton.styleFrom(
                              fixedSize: const Size(180, 50)),
                          onPressed: () {
                            Get.to(Usermain());
                          },
                          child: Text(
                            "ড্যাশবোর্ড ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
