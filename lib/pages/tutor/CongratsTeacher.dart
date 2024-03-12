import 'package:Tutora/pages/tutor/TeacherMain.dart';
import 'package:flutter/material.dart';
import 'package:Tutora/pages/student/usermain.dart';

class CongratsTeacher extends StatelessWidget {
  const CongratsTeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(child: Image.asset("assets/images/congi.gif")),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "আমরা আপনার ডাটা স্টোর করেছি",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                  color: Color.fromARGB(255, 255, 0, 0)),
              child: TextButton(
                  style: TextButton.styleFrom(fixedSize: const Size(180, 50)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TeacherMain()));
                  },
                  child: const Text(
                    "ড্যাশবোর্ড",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
