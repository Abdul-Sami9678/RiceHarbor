import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rice_harbor/screens/Forget_Password/Code.dart';
import 'package:sizer/sizer.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class Forgot_Password extends StatefulWidget {
  const Forgot_Password({super.key});

  @override
  State<Forgot_Password> createState() => _Forgot_PasswordState();
}

class _Forgot_PasswordState extends State<Forgot_Password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Colors.white60),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 18,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/icons/Back.png'))),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 32,
                      width: 260,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/Login/FP.png'))),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Enter your email for the verification process. We will send 4 digits code to your email.',
                      style: TextStyle(
                          fontFamily: ('Sans-Regular'),
                          fontSize: 16,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    const Text(
                      'Email',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: ('Sans'),
                          fontWeight: FontWeight.w200,
                          color: Color(0xFF2E2E2E)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 212, 209, 209)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          labelText: 'Enter your email address',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          labelStyle: TextStyle(
                              color: Colors.grey.shade500, fontSize: 15)),
                    ),
                    const SizedBox(
                      height: 398,
                    ),
                    Container(
                        alignment: Alignment.center,
                        height: 57,
                        width: 342,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 9, 9, 9),
                            borderRadius: BorderRadius.circular(12)),
                        child: TouchableOpacity(
                          activeOpacity: 0.3,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Code()));
                            },
                            child: const Text(
                              'Send Code',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.5,
                                fontFamily: ('Sans'),
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
