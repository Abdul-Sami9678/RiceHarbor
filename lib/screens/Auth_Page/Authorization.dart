import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rice_harbor/screens/Home_Screen/Home_screen.dart';
import 'package:rice_harbor/screens/Login_Signup/Log.dart';

class Authoriztion_Page extends StatefulWidget {
  const Authoriztion_Page({super.key});

  @override
  State<Authoriztion_Page> createState() => _Authoriztion_PageState();
}

class _Authoriztion_PageState extends State<Authoriztion_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Home_Screen();
        } else
          return Login_Screen();
      },
    ));
  }
}
