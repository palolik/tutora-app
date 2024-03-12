import 'package:Tutora/pages/student/Review/TutorReview.dart';
import 'package:Tutora/pages/student/coachings/creview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ReviewOne extends StatefulWidget {
  const ReviewOne({Key? key}) : super(key: key);

  @override
  State<ReviewOne> createState() => _ReviewOneState();
}

class _ReviewOneState extends State<ReviewOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("রিভিউ পেজ"),
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
      ),
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
              "রিভিউ দিতে যেকোন একটি নির্বাচন করুন ",
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
                    Get.to(TutorReview());
                  },
                  child: const Text(
                    "টিউটর রিভিউ",
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
                      Get.to(Review());
                    }
                  },
                  child: Text(
                    "কোচিং রিভিউ",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
