import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rice_harbor/screens/Login_Signup/Log.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class Create_Account extends StatefulWidget {
  const Create_Account({super.key});

  @override
  State<Create_Account> createState() => _Create_AccountState();
}

class _Create_AccountState extends State<Create_Account> {
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
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 100,
                      width: 264,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/Login/CA.png'))),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      'Full Name',
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
                          labelText: 'Enter your full name',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          labelStyle: TextStyle(
                              color: Colors.grey.shade500, fontSize: 15)),
                    ),
                    const SizedBox(
                      height: 25,
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
                      height: 11,
                    ),
                    const Text.rich(TextSpan(
                        text: 'By signing up you agree to our ',
                        style: TextStyle(
                            fontSize: 14, fontFamily: ('Sans-Regular')),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Terms',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: ('Sans-Regular'))),
                          TextSpan(
                              text: ',',
                              style: TextStyle(
                                  //decoration: TextDecoration.underline,
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: ('Sans-Regular'))),
                          TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: ('Sans-Regular'))),
                          TextSpan(
                              text: ',',
                              style: TextStyle(
                                  //decoration: TextDecoration.underline,
                                  //fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: ('Sans-Regular'))),
                          TextSpan(
                              text: ' and ',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: ('Sans-Regular'))),
                          TextSpan(
                              text: 'Cookie Use',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  fontFamily: ('Sans-Regular')))
                        ])),
                    const SizedBox(
                      height: 29,
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
                            'Create an Account',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.5,
                              fontFamily: ('Sans'),
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 30,
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
                                'Sign up with Google',
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
                                'Sign up with Facebook',
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
                      height: 45,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Already have an account?',
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
                                      builder: ((context) => Login_Screen())));
                            },
                            child: const Text(
                              'Log In',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: ('Sans-Regular'),
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
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
