import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rice_harbor/constants.dart';

class Description extends StatelessWidget {
  final String description;
  const Description({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: Text(
                "Description",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Sans-Regular",
                    color: Colors.white,
                    fontSize: 14),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          description,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            fontSize: 14.5,
            fontFamily: "Sans-Regular",
            color: Colors.grey,
            height: 1.3,
          ),
        )
      ],
    );
  }
}
