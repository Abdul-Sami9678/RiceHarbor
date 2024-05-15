import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rice_harbor/screens/Notifications/Notification.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 33,
          width: 140,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Discover.png'))),
        ),
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Notification_Messages()));
            },
            icon: Image.asset(
              'assets/images/icons/Bell.png',
              height: 30,
              width: 30,
            )),
      ],
    );
  }
}
