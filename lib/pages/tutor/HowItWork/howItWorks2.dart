import 'package:Tutora/pages/tutor/HowItWork/howItWorks3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class howItWorks2 extends StatefulWidget {
  const howItWorks2({Key? key}) : super(key: key);

  @override
  State<howItWorks2> createState() => _howItWorks2State();
}

class _howItWorks2State extends State<howItWorks2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("টিউটর নির্বাচন পদ্ধতি"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 255, 0, 0),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/qualityeducation.gif"),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shadowColor: Color.fromARGB(255, 255, 0, 0),
                elevation: 5,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "সকল ভেরিফাইড টিউটরদের পড়ানোর বিষয়ের উপর একটি ছোট পরীক্ষা নেওয়া হবে।",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
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
                    {
                      Get.to(howItWorks3());
                    }
                  },
                  child: Text(
                    "পরবর্তী",
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
