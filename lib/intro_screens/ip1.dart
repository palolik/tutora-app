import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/images/handshake.gif",
            height: 400,
            width: .9 * width,
          ),
          const Text("সুদৃঢ় সম্পর্ক স্থাপন",
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 255, 0, 0),
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          const Text(
              "শিক্ষক এবং শিক্ষার্থীদের মধ্যে সবসময় যেন একটা ব্যবধান থেকেই যায়। শিক্ষক এবং শিক্ষার্থীর মধ্যকার সম্পর্ক সুদৃঢ় করার জন্যই আমাদের এই প্রয়াস।",
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
