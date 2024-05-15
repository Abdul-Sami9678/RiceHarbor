import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final String image;
  const MyImageSlider({
    super.key,
    required this.image,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      width: MediaQuery.sizeOf(context).width, // Half of the screen width
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            10), // Adjust the radius as per your preference
        // Add border
      ),
      child: ClipRRect(
        // Clip rounded corners
        borderRadius: BorderRadius.circular(20), // Same as the above
        child: PageView.builder(
          onPageChanged: onChange,
          itemCount: 5, // You might need to specify itemCount
          itemBuilder: (context, index) {
            return Hero(
              tag: image,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
