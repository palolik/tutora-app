import 'package:flutter/material.dart';

class IntroPage4 extends StatelessWidget {
  const IntroPage4({Key? key}) : super(key: key);

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
            "assets/images/mike.gif",
            height: 400,
          ),
          const Text("স্টুডেন্ট কমিউনিটি গঠন",
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 255, 0, 0),
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          const Text(
              "শিক্ষা জীবন থেকেই একজন শিক্ষার্থী যেন নিজের দায়িত্ব নিজে নিতে শিখে , নিজে স্বাবলম্বী হতে পারে সে লক্ষ নিয়েই আমাদের পথ চলা  ",
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
