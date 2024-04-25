import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rice_harbor/screens/Forget_Password/Reset.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class Code extends StatefulWidget {
  const Code({super.key});

  @override
  State<Code> createState() => _CodeState();
}

class _CodeState extends State<Code> {
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
                              image: AssetImage('assets/images/Login/CD.png'))),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      'Enter 4 digit code that you receive on your email',
                      style: TextStyle(
                          fontFamily: ('Sans-Regular'),
                          fontSize: 16,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Form(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onSaved: (pin1) {},
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(1)
                            ],
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 212, 209, 209)),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              hintText: "0",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onSaved: (pin2) {},
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(1)
                            ],
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 212, 209, 209)),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              hintText: "0",
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onSaved: (pin3) {},
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(1)
                            ],
                            decoration: InputDecoration(
                              hintText: "0",
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 212, 209, 209)),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            onChanged: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            onSaved: (pin4) {},
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(1)
                            ],
                            decoration: InputDecoration(
                              hintText: "0",
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 212, 209, 209)),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                        )
                      ],
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Email not received?',
                          style: TextStyle(
                              fontSize: 15, fontFamily: ('Sans-Regular')),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        TouchableOpacity(
                          activeOpacity: 0.3,
                          child: const Text(
                            'Resend code',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: ('Sans-Regular'),
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ],
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
                                      builder: (context) => Reset_Password()));
                            },
                            child: const Text(
                              'Continue',
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
