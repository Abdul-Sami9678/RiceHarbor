import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rice_harbor/screens/Tabs_Options/Home.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
          SizedBox(
            height: 45,
          ),
          SafeArea(
            child: TouchableOpacity(
              activeOpacity: 0.3,
              child: GestureDetector(
                onTap: () {
                  // Navigator.of(context).pop();
                },
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/icons/Back.png'))),
                ),
              ),
            ),
          ),
          // SafeArea(
          //   child: Center(
          //     child: TouchableOpacity(
          //       activeOpacity: 0.3,
          //       child: GestureDetector(
          //         onTap: () {
          //           Navigator.push(context,
          //               MaterialPageRoute(builder: (context) => Main_Home()));
          //         },
          //         child: Container(
          //           height: 35,
          //           width: 35,
          //           decoration: const BoxDecoration(
          //               image: DecorationImage(
          //                   image: AssetImage('assets/images/icons/Back.png'))),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
