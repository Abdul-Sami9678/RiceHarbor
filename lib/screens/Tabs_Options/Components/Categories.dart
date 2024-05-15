import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1, // Set itemCount to 1
        itemBuilder: (context, index) {
          return Row(
            // Wrap GroupButton with Row
            children: [
              GroupButton(
                buttons: [
                  "All",
                  "Basmati",
                  "Kernel",
                  "Super Kernel",
                  "Brown Rice",
                  "Arborio Rice",
                  "Long Grain",
                  "BR98"
                ],
                options: GroupButtonOptions(
                  unselectedShadow: List.empty(),
                  selectedTextStyle: TextStyle(
                    fontFamily: 'Sans',
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  spacing: 5,
                  unselectedBorderColor: Color.fromARGB(255, 235, 230, 230),
                  unselectedColor: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  selectedColor: Colors.black,
                  buttonHeight: 36,
                  buttonWidth: 110,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
