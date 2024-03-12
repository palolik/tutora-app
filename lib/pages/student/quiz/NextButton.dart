import 'package:Tutora/pages/student/quiz/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NextButton extends StatelessWidget {
  const NextButton({Key? key, required this.nextQuestion}) : super(key: key);
  final VoidCallback nextQuestion;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: nextQuestion,
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 0, 0),
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
        child: TextButton(
            style: TextButton.styleFrom(fixedSize: const Size(180, 50)),
            onPressed: nextQuestion,
            child: const Text(
              "Next Question",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            )),
      ),
    );
  }
}
