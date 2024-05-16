import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Help_Center extends StatefulWidget {
  const Help_Center({super.key});

  @override
  State<Help_Center> createState() => _Help_CenterState();
}

class _Help_CenterState extends State<Help_Center> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  icon: ImageIcon(
                    AssetImage('assets/images/icons/Back.png'),
                    size: 30,
                  ),
                ),
                Container(
                  height: 33,
                  width: 145,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Cart/Help.png'))),
                ),
                Container(
                  height: 28,
                  width: 28,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/icons/Bell.png'))),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
