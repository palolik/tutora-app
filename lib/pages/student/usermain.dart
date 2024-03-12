import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:Tutora/auth/Notification.dart';
import 'package:Tutora/pages/student/addStudent.dart';
import 'package:Tutora/pages/student/dashboard.dart';
import 'package:Tutora/pages/home_page.dart';
import 'package:Tutora/pages/localdata.dart';

class Usermain extends StatefulWidget {
  Usermain({Key? key}) : super(key: key);

  @override
  State<Usermain> createState() => _UsermainState();
}

class _UsermainState extends State<Usermain> {
  String? name;
  String? institution;
  String? url;
  String? clas;
  String? score;

  @override
  void initState() {
    name = UserSharedPreference().getName() ?? "তোমার নাম";
    institution =
        UserSharedPreference().getStudentInstitution() ?? "শিক্ষা প্রতিষ্ঠান";
    clas = UserSharedPreference().getClassStudent() ?? "তোমার শ্রেণি";
    url = UserSharedPreference().getImageStudent();
    // print(url);

    setState(() {});
    super.initState();
  }

  int _selectedIndex = 1;
  static List<Widget> _widgetOptions = <Widget>[
    const NotificationWidget(),
    const Dashboard(),
    const HomePage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
            decoration: const BoxDecoration(
              // border: Border(
              //   top: BorderSide(color: Color(0xFFFFFFFF)),
              //   left: BorderSide(color: Color(0xFFFFFFFF)),
              //   right: BorderSide(),
              //   bottom: BorderSide(),
              // ),
              // borderRadius: BorderRadius.circular(0),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 255, 0, 0),
                    Color.fromARGB(255, 216, 0, 0)
                  ]),
              // boxShadow: [
              //   BoxShadow(blurRadius: .5, offset: Offset(1.0, 1.0))]
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
                          Text(
                            "${name}",
                            style: const TextStyle(color: Colors.white),
                          ),
                          Text(
                            "${institution}",
                            style: const TextStyle(color: Colors.white),
                          ),
                          Text(
                            "${clas}",
                            style: const TextStyle(color: Colors.white),
                          ),

                          // ElevatedButton(
                          //     onPressed: () {
                          //       Get.to(AddStudentPage());
                          //     },
                          //     child: Text("Complete Profile"))
                        ],
                      ),
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
                  Get.to(const AddStudentPage());
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
                            // top: BorderSide(),
                            //   left: BorderSide(
                            //     color: Color.fromARGB(255, 255, 0, 0),
                            //     width: 2.0,
                            //   ),
                            //   right: BorderSide(
                            //     color: Color.fromARGB(255, 255, 0, 0),
                            //     width: 2.0,
                            //   ),

                            color: const Color.fromARGB(255, 255, 0, 0),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(0),
                            topRight: const Radius.circular(0),
                            bottomLeft: const Radius.circular(10),
                            bottomRight: const Radius.circular(10),
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
                      child: Text(
                        'প্রফাইল কমপ্লিট / এডিট করুন',
                        style: const TextStyle(
                          fontSize: 16,
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
