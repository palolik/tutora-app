import 'package:Tutora/pages/ComingSoon.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
// import 'package:Tutora/pages/student/rewords/RewordTwo.dart';

class Reword extends StatefulWidget {
  const Reword({Key? key}) : super(key: key);

  @override
  State<Reword> createState() => _RewordState();
}

class _RewordState extends State<Reword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/lader.gif"),
              const SizedBox(
                height: 20,
              ),
              const Text("মার্চ মাস থেকে আমাদের এই ফিচারটি সক্রিও হবে"),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 0, 0),
                  borderRadius: BorderRadius.all(Radius.circular(18)),
                ),
                child: TextButton(
                    style: TextButton.styleFrom(fixedSize: const Size(180, 50)),
                    onPressed: () {
                      Get.to(const ComingSoon());
                    },
                    child: const Text(
                      "শুরু করা যাক",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
