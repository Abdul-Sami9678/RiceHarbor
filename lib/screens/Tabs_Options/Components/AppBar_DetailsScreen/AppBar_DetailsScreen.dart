import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Color(0XFFF5F5F5),
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: ImageIcon(AssetImage('assets/images/icons/Back.png')),
          ),
          const Spacer(),
          const SizedBox(width: 10),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: Color(0XFFF5F5F5),
              padding: const EdgeInsets.all(15),
            ),
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}
