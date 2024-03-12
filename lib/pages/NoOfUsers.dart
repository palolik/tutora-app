import 'package:flutter/material.dart';

class NoOfUser extends StatefulWidget {
  NoOfUser({Key? key}) : super(key: key);

  @override
  State<NoOfUser> createState() => _NoOfUserState();
}

class _NoOfUserState extends State<NoOfUser> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      Text(
                        "Students",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                  Container(
                    height: 70,
                    width: 150,
                    child: Card(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "5864",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Column(
                    children: [
                      Text(
                        "Teacher",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                  Container(
                    height: 70,
                    width: 150,
                    child: Card(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "864",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
