import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rice_harbor/screens/Auth_Page/Authorization.dart';
import 'package:rice_harbor/screens/Home_Screen/Home_screen.dart';
import 'package:rice_harbor/screens/Login_Signup/Log.dart';
import 'package:rice_harbor/screens/Login_Signup/signup.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Login.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Container(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Image.asset(
                'assets/images/Welcome.png',
                height: 56,
                width: 302,
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 380),
            child: Image.asset(
              'assets/images/Create.png',
              height: 60,
              width: 318,
            ),
          ),
        ),
        TouchableOpacity(
          activeOpacity: 0.3,
          child: GestureDetector(
            onTap: () {
              Get.to(() => Create_Account(),
                  transition: Transition.upToDown,
                  duration: Duration(milliseconds: 500));
            },
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 380),
                child: Image.asset(
                  'assets/images/Create_A.png',
                  height: 45,
                  width: 160,
                ),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(top: 545),
            child: Image.asset(
              'assets/images/Login1.png',
              height: 60,
              width: 318,
            ),
          ),
        ),
        TouchableOpacity(
          activeOpacity: 0.3,
          child: GestureDetector(
            onTap: () {
              Get.to(() => Login_Screen(),
                  transition: Transition.upToDown,
                  duration: Duration(milliseconds: 500));
            },
            child: Container(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 545),
                child: Image.asset(
                  'assets/images/Login2.png',
                  height: 21,
                  width: 45,
                ),
              ),
            ),
          ),
        ),
        // TouchableOpacity(
        //   activeOpacity: 0.3,
        //   child: GestureDetector(
        //     onTap: () {
        //       Get.to(() => Home_Screen(),
        //           transition: Transition.upToDown,
        //           duration: Duration(milliseconds: 500));
        //     },
        //     child: Container
        //     (
        //       alignment: Alignment.center,
        //       child: Padding(
        //         padding: const EdgeInsets.only(top: 672),
        //         child: Image.asset(
        //           'assets/images/Continue.png',
        //           height: 24,
        //           width: 130,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
