import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/images/qualityeducation.gif",
            height: 400,
          ),
          const Text("সহজলভ্য শিক্ষা",
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 255, 0, 0),
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          const Text(
              "পড়া ভালো বোঝার জন্য চাই একজন ভালো শিক্ষকের ,যে শিক্ষার্থীর বোঝার ক্ষমতার ওপর ভিত্তি করে বিষয়গুলো সহজ করে দিতে পারে।",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              )),
        ],
      ),
    );
  }
}
