import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Intro_Screen1 extends StatefulWidget {
  const Intro_Screen1({super.key});

  @override
  State<Intro_Screen1> createState() => _Intro_Screen1State();
}

class _Intro_Screen1State extends State<Intro_Screen1> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/market1.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(top: 440),
          child: Image.asset(
            'assets/images/Frame_1.png',
            height: 190,
            width: 300,
          ),
        ),
      ),
    ]);
  }
}
