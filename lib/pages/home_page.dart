import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:Tutora/auth/auth_page.dart';
import 'package:Tutora/pages/localdata.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Signed in as ' + user.email!),

            Image.asset(
              "assets/inimages/l1.png",
              height: 400,
            ),
            const Text("সাইন আউট করতে চান ?"),

            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 0, 0),
                borderRadius: BorderRadius.all(Radius.circular(18)),
              ),
              child: TextButton(
                  style: TextButton.styleFrom(fixedSize: const Size(180, 50)),
                  onPressed: () {
                    {
                      // Get.to(const AuthPage());
                      // FirebaseAuth.instance.signOut();
                    }
                  },
                  child: const Text(
                    "সাইন আউট",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  )),
            ),
            // ElevatedButton(
            //     onPressed: () async {}, child: Text("Update Profile"))
          ],
        ),
      ),
    );
  }
}
