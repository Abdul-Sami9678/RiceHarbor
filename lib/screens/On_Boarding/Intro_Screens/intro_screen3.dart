import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rice_harbor/screens/On_Boarding/Intro_Screens/intro_screen2.dart';
import 'package:rice_harbor/screens/On_Boarding/Intro_Screens/intro_screen4.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class Intro_Screen3 extends StatelessWidget {
  const Intro_Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/water.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 440),
            child: Image.asset(
              'assets/images/Frame_3.png',
              height: 190,
              width: 300,
            ),
          ),
        ),
      ],
    );
  }
}
