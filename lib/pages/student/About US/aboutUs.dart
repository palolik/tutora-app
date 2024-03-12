// ignore: file_names
import 'package:Tutora/pages/ComingSoon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class aboutUs extends StatefulWidget {
  const aboutUs({Key? key}) : super(key: key);

  @override
  State<aboutUs> createState() => _aboutUsState();
}

class _aboutUsState extends State<aboutUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 0, 0),
          title: const Text("About Us"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Card(
                  elevation: 20,
                  shadowColor: const Color.fromARGB(255, 255, 0, 0),
                  margin: const EdgeInsets.all(20),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/tutorsdp.png",
                          height: 200,
                          width: 200,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Azizul Alam Prottoy",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Founder of Tutora",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "  Founder and CTO of Cloud Company  ",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Web and Apps Developer,",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const Text(
                          "3D Model Designer at ASL",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: const Icon(Icons.facebook),
                              onTap: (() => const ComingSoon()),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () {
                                  ComingSoon();
                                },
                                icon: FaIcon(FontAwesomeIcons.instagram)),
                            SizedBox(
                              width: 3,
                            ),
                            IconButton(
                              onPressed: () {
                                ComingSoon();
                              },
                              icon: const FaIcon(FontAwesomeIcons.linkedinIn),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  elevation: 20,
                  shadowColor: const Color.fromARGB(255, 255, 0, 0),
                  margin: const EdgeInsets.all(20),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/tutorsdp.png",
                          height: 200,
                          width: 200,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Akash Ghosh",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "CTO of Tutora",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Senior Software Engineer ",
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          "at Cloud Company ",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "Web and Apps Developer",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "    CEO and Founder of Easy Study BD  ",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: const Icon(Icons.facebook),
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.instagram)),
                            SizedBox(
                              width: 3,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: FaIcon(FontAwesomeIcons.linkedinIn),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  elevation: 20,
                  shadowColor: const Color.fromARGB(255, 255, 0, 0),
                  margin: const EdgeInsets.all(20),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/tutorsdp.png",
                          height: 200,
                          width: 200,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Md.Sajibul Islam Rana",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "QA Engineer of Tutora",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Senior Software Engineer ",
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          "at Cloud Company",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "     CEO and Founder of Byte Birds       ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: const Icon(Icons.facebook),
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.instagram)),
                            SizedBox(
                              width: 3,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: FaIcon(FontAwesomeIcons.linkedinIn),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  elevation: 20,
                  shadowColor: const Color.fromARGB(255, 255, 0, 0),
                  margin: const EdgeInsets.all(20),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/tutorsdp.png",
                          height: 200,
                          width: 200,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Lian Mollick",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Graphics Designer of Tutora",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "          Embebded System Engineer       ",
                          style: TextStyle(fontSize: 18),
                        ),
                        const Text(
                          "at DhumketuX",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "    Works at ElectronXD    ",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: const Icon(Icons.facebook),
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.instagram)),
                            SizedBox(
                              width: 3,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: FaIcon(FontAwesomeIcons.linkedinIn),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Card(
                  elevation: 20,
                  shadowColor: const Color.fromARGB(255, 255, 0, 0),
                  margin: const EdgeInsets.all(20),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/tutorsdp.png",
                          height: 200,
                          width: 200,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "MD Shahab Uuddin ",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "          Content Manager of Tutora         ",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "    Digital Marketer     ",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              child: const Icon(Icons.facebook),
                              onTap: () {},
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: FaIcon(FontAwesomeIcons.instagram)),
                            SizedBox(
                              width: 3,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: FaIcon(FontAwesomeIcons.linkedinIn),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
