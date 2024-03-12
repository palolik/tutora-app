import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {
  const IntroPage3({Key? key}) : super(key: key);

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
            "assets/images/teacher.gif",
            height: 400,
          ),
          const Text("শিক্ষকের প্রতি নির্ভরতাশীলতা",
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 255, 0, 0),
                  fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 10,
          ),
          const Text(
              "শিক্ষার্থীর জীবনে বাবা-মা এর পরেই যার প্রভাব সব থেকে বেশি তিনি হলেন শিক্ষক, তাই আস্থাভাজন শিক্ষক শিক্ষিকাদের পরিবার নিয়ে আমরা এখানে ।",
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
