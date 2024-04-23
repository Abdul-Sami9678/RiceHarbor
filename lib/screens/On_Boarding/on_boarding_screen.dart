import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rice_harbor/screens/Home_Screen/Home_screen.dart';
import 'package:rice_harbor/screens/Login_Signup/login.dart';
import 'package:rice_harbor/screens/On_Boarding/Intro_Screens/intro_screen1.dart';
import 'package:rice_harbor/screens/On_Boarding/Intro_Screens/intro_screen2.dart';
import 'package:rice_harbor/screens/On_Boarding/Intro_Screens/intro_screen3.dart';
import 'package:rice_harbor/screens/On_Boarding/Intro_Screens/intro_screen4.dart';
import 'package:rice_harbor/screens/On_Boarding/Intro_Screens/intro_screen5.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

// ignore: camel_case_types
class On_Boarding_Screen extends StatefulWidget {
  const On_Boarding_Screen({super.key});

  @override
  State<On_Boarding_Screen> createState() => _On_Boarding_ScreenState();
}

// ignore: camel_case_types
class _On_Boarding_ScreenState extends State<On_Boarding_Screen> {
  // Controller of Page Indicators........
  final PageController _controller = PageController();

  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          physics: const ClampingScrollPhysics(),
          controller: _controller,
          onPageChanged: (index) {
            setState(() {
              onLastPage = (index == 4);
            });
          },
          children: const [
            Intro_Screen1(),
            Intro_Screen2(),
            Intro_Screen3(),
            Intro_Screen4(),
            Intro_Screen5(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 165),
          child: Container(
              alignment: const Alignment(0, 0.84),
              child: SmoothPageIndicator(
                controller: _controller,
                count: 5,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.white,
                  dotColor: Colors.black.withOpacity(0.7),
                  dotHeight: 12,
                  dotWidth: 12,
                ),
              )),
        ),
        onLastPage
            ? GestureDetector(
                onTap: () => {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn),
                },
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => Login(),
                        transition: Transition.downToUp,
                        duration: Duration(milliseconds: 700));
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 703, left: 235),
                      child: Image.asset(
                        'assets/images/Start.png',
                        height: 40,
                        width: 105,
                      ),
                    ),
                  ),
                ),
              )
            : TouchableOpacity(
                activeOpacity: 0.3,
                child: GestureDetector(
                  onTap: () => {
                    _controller.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeIn),
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 697, left: 292),
                      child: Image.asset(
                        'assets/images/forward_arrow1.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                ),
              ),
      ],
    ));
  }
}
