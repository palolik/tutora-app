import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:Tutora/intro_screens/ip1.dart';
import 'package:Tutora/intro_screens/ip2.dart';
import 'package:Tutora/intro_screens/ip3.dart';
import 'package:Tutora/intro_screens/ip4.dart';

import 'package:Tutora/auth/main_page.dart';
// import 'package:flutter/services.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();

  bool onLastScreen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  onLastScreen = (index == 3);
                });
              },
              children: [
                const IntroPage1(),
                const IntroPage2(),
                const IntroPage3(),
                const IntroPage4(),
              ]),
          //dot inndicator
          Container(
            alignment: const Alignment(0.5, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(3);
                  },
                  child: const Text(
                    'স্কিপ',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 255, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Raleway',
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                  axisDirection: Axis.horizontal,
                  effect: const SlideEffect(
                      spacing: 8.0,
                      radius: 4.0,
                      dotWidth: 22.0,
                      dotHeight: 14.0,
                      paintStyle: PaintingStyle.stroke,
                      strokeWidth: 1.5,
                      dotColor: Color.fromARGB(255, 255, 156, 156),
                      activeDotColor: Color.fromARGB(255, 255, 0, 0)),
                ),
                //next
                onLastScreen
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const MainPage();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'শেষ',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 255, 0, 0),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Raleway',
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: const Text(
                          'নেক্সট',
                          style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 255, 0, 0),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Raleway',
                          ),
                        )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
