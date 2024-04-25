import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:rice_harbor/screens/Forget_Password/Forget.dart';
import 'package:rice_harbor/screens/Login_Signup/signup.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  bool _isVisible = false;
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
          SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 65,
                      width: 335,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/Login/LA.png'))),
                    ),
                    const SizedBox(
                      height: 26,
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
                      height: 25,
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
                      height: 9,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Forgot your password?',
                          style: TextStyle(
                              fontSize: 14, fontFamily: ('Sans-Regular')),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        TouchableOpacity(
                          activeOpacity: 0.3,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Forgot_Password()));
                            },
                            child: const Text(
                              'Reset your password',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: ('Sans-Regular'),
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 27,
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
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.5,
                              fontFamily: ('Sans'),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.5),
                          child: Text(
                            'Or',
                            style: TextStyle(
                                fontFamily: ('Sans-Regular'),
                                fontSize: 14,
                                color: Colors.grey[600]),
                          ),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 57,
                      width: 342,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromARGB(255, 146, 143, 143)),
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 70,
                          ),
                          Image.asset(
                            'assets/images/icons/G_Icon.png',
                            height: 33,
                            width: 33,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                            child: TouchableOpacity(
                              activeOpacity: 0.3,
                              child: const Text(
                                'Login with Google',
                                style: TextStyle(
                                  fontSize: 16.5,
                                  color: Colors.black,
                                  fontFamily: ('Sans'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 57,
                      width: 342,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 44, 129, 239),
                          borderRadius: BorderRadius.circular(12)),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 67,
                          ),
                          Container(
                            height: 33,
                            width: 33,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/icons/F_icon.png'))),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                            child: TouchableOpacity(
                              activeOpacity: 0.3,
                              child: const Text(
                                'Login with Facebook',
                                style: TextStyle(
                                  fontSize: 16.5,
                                  color: Colors.white,
                                  fontFamily: ('Sans'),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 110,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don’t have an account?",
                          style: TextStyle(
                              fontSize: 16, fontFamily: ('Sans-Regular')),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        TouchableOpacity(
                          activeOpacity: 0.3,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Create_Account()));
                            },
                            child: const Text(
                              'Join',
                              style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: ('Sans'),
                                  //fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                      ],
                    ),
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
