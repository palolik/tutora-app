import 'package:Tutora/pages/student/popUpStudent.dart';
import 'package:Tutora/pages/tutor/popUpTeacher.dart';
import 'package:flutter/material.dart';
import 'package:Tutora/auth/auth_page.dart';
// import 'package:logsign/pages/Student%20Table.dart';
// import 'package:Tutora/pages/tutor/TeacherMain.dart';

import 'package:get/get.dart';
import 'package:get/route_manager.dart';
// import 'package:Tutora/pages/student/usermain.dart';

class HomepageTS extends StatefulWidget {
  const HomepageTS({Key? key}) : super(key: key);

  @override
  State<HomepageTS> createState() => _HomepageTSState();
}

class _HomepageTSState extends State<HomepageTS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset(
                  "assets/inimages/logob.png",
                  width: 600,
                  height: 200,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              "আমি একজন ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 0, 0),
                borderRadius: BorderRadius.all(Radius.circular(18)),
              ),
              child: TextButton(
                  style: TextButton.styleFrom(fixedSize: const Size(180, 50)),
                  onPressed: () {
                    Get.to(const PopUpStudent());
                  },
                  child: const Text(
                    "স্টুডেন্ট",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 0, 0),
                borderRadius: BorderRadius.all(Radius.circular(18)),
              ),
              child: TextButton(
                  style: TextButton.styleFrom(fixedSize: const Size(180, 50)),
                  onPressed: () {
                    {
                      Get.to(const PopUpTeacher());
                    }
                  },
                  child: Text(
                    "টিউটর",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
