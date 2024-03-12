import 'package:Tutora/pages/student/dashboard.dart';
import 'package:Tutora/pages/student/quiz/constants.dart';
import 'package:Tutora/pages/student/quiz/quizMarkStore.dart';
import 'package:Tutora/pages/student/usermain.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ResultBox extends StatelessWidget {
  const ResultBox({Key? key, required this.result1}) : super(key: key);
  final String result1;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You have got $result1",
            style: const TextStyle(fontSize: 22.0),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 0, 0),
              borderRadius: BorderRadius.all(Radius.circular(18)),
            ),
            child: TextButton(
                style: TextButton.styleFrom(fixedSize: const Size(180, 50)),
                onPressed: () {
                  Get.to(Usermain());
                },
                child: const Text(
                  "Dashboard",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
