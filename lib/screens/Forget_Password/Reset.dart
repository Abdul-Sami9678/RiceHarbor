import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rice_harbor/screens/Login_Signup/Log.dart';
import 'package:touchable_opacity/touchable_opacity.dart';
import 'package:quickalert/quickalert.dart';

class Reset_Password extends StatefulWidget {
  const Reset_Password({super.key});

  @override
  State<Reset_Password> createState() => _Reset_PasswordState();
}

class _Reset_PasswordState extends State<Reset_Password> {
  void showAlert() {
    QuickAlert.show(
      barrierDismissible: true,
      context: context,
      type: QuickAlertType.success,
      backgroundColor: Colors.white60,
      confirmBtnText: "Login",
      title: "Password Changed!",
      titleColor: Colors.black,
      onConfirmBtnTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login_Screen()));
      },
      confirmBtnColor: Colors.black,
      text: "You can now use your new password to login to your account",
    );
  }

  @override
  bool _isVisible = false;
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
              padding: EdgeInsets.symmetric(horizontal: 30),
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
                        Navigator.of(context).pop();
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
                              image: AssetImage('assets/images/Login/RP.png'))),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      'Set the new password for your account so you can login and access all the features.',
                      style: TextStyle(
                          fontFamily: ('Sans-Regular'),
                          fontSize: 16,
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Password',
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
                      obscureText: !_isVisible,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            icon: _isVisible
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 212, 209, 209)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          labelText: 'Enter your password',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          labelStyle: TextStyle(
                              color: Colors.grey.shade500, fontSize: 15)),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Confirm Password',
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
                      obscureText: !_isVisible,
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            icon: _isVisible
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 212, 209, 209)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12)),
                          labelText: 'Enter your password',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          labelStyle: TextStyle(
                              color: Colors.grey.shade500, fontSize: 15)),
                    ),
                    const SizedBox(
                      height: 270,
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
                              showAlert();
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
          ),
        ],
      ),
    );
  }
}
