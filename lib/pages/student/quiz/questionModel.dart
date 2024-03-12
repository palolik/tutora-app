// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class questionWidget extends StatelessWidget {
  const questionWidget({
    Key? key,
    required this.question,
    required this.indexAction,
    required this.totalQuestions,
  }) : super(key: key);
  final String? question;
  final int indexAction;
  final int totalQuestions;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        "Question ${indexAction + 1}/$totalQuestions: $question",
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
