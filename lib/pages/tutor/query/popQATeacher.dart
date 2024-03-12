import 'package:Tutora/pages/tutor/TeacherMain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class popQATeacher extends StatelessWidget {
  const popQATeacher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                    "প্রশ্নটি করার জন্য আপনাকে অসংখ্য ধন্যবাদ। কমন প্রশ্ন ও উত্তরের মধ্যে আপনি আপনার প্রস্নের উত্তর ২৪ ঘন্টার মধ্যে পেয়ে যাবেন"),
              ),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 0, 0),
              borderRadius: BorderRadius.all(Radius.circular(18)),
            ),
            child: TextButton(
                style: TextButton.styleFrom(fixedSize: const Size(180, 50)),
                onPressed: () {
                  {
                    Get.to(TeacherMain());
                  }
                },
                child: Text(
                  "ড্যাশবোর্ড",
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
