import 'package:Tutora/pages/tutor/addTeacher.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Tutora/auth/NotificationWidgetTeacher.dart';
import 'package:Tutora/pages/tutor/TeacherDashboard.dart';
import 'package:Tutora/pages/student/addStudent.dart';
import 'package:Tutora/pages/home_page.dart';
import 'package:Tutora/pages/localdata.dart';

class TeacherMain extends StatefulWidget {
  TeacherMain({Key? key}) : super(key: key);

  @override
  State<TeacherMain> createState() => _TeacherMainState();
}

class _TeacherMainState extends State<TeacherMain> {
  String? userName;
  String? university;
  String? studySubject;

  int _selectedIndex = 1;
  static List<Widget> _widgetOptions = <Widget>[
    const NotificationWidgetTeacher(),
    Dashboard(),
    const HomePage(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    userName = UserSharedPreference().getTeacherUserName() ?? "আপনার নাম";
    university =
        UserSharedPreference().getUniversity() ?? "আপনার শিক্ষা প্রতিষ্ঠান";
    studySubject =
        UserSharedPreference().getStudySubjectTeacher() ?? "আপনার বিষয়";

    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(130),
        child: SafeArea(
            child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height * 0.7,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 255, 0, 0),
                    Color.fromARGB(255, 216, 0, 0)
                  ]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        "assets/images/profile.png",
                        width: 100,
                        height: 100,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            "${userName}",
                            style: const TextStyle(color: Colors.white),
                          ),
                          Text(
                            "${university}",
                            style: const TextStyle(color: Colors.white),
                          ),
                          Text(
                            "${studySubject}",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Flexible(
              child: GestureDetector(
                onTap: () {
                  Get.to(AddTeacherPage());
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30,
                      padding: const EdgeInsets.all(3),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromARGB(255, 255, 0, 0),
                            width: 2.0,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(0),
                            topRight: Radius.circular(0),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromARGB(255, 255, 255, 255),
                                Color.fromARGB(255, 255, 255, 255)
                              ]),
                          boxShadow: [
                            const BoxShadow(
                                blurRadius: .5, offset: Offset(1.0, 1.0))
                          ]),
                      child: const Text(
                        'প্রফাইল কমপ্লিট / এডিট করুন',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 255, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Raleway',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ])

            // top navigation bar goes here
            ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'বার্তা',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'ড্যাসবোর্ড',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'লগ আউট',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
