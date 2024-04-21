import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          physics: const ClampingScrollPhysics(),
          controller: _controller,
          children: const [
            Intro_Screen1(),
            Intro_Screen2(),
            Intro_Screen3(),
            Intro_Screen4(),
            Intro_Screen5(),
          ],
        ),
        Container(
            alignment: const Alignment(0, 0.84),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 5,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.white,
                dotColor: Colors.black.withOpacity(0.7),
                dotHeight: 14,
                dotWidth: 14,
              ),
            )),

        // Forward Arrow...........
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 703, left: 300),
            child: TouchableOpacity(
              activeOpacity: 0.3,
              child: GestureDetector(
                onTap: () {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/forward_arrow.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

// Back Arrow................
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 703, right: 300),
            child: TouchableOpacity(
              activeOpacity: 0.3,
              child: GestureDetector(
                onTap: () {
                  _controller.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/back_arrow.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
