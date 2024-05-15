import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rice_harbor/Data/Data.dart';
import 'package:rice_harbor/constants.dart';
import 'package:rice_harbor/screens/Tabs_Options/Components/Details_Screen.dart';

class ProductCart extends StatelessWidget {
  final Product product;
  const ProductCart({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                        product: product,
                      )));
        },
        child: Stack(children: [
          Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 150, // Specify the desired height
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Hero(
                      tag: product.image,
                      child: Image.asset(
                        product.image,
                        width: double.infinity,
                        height: double.infinity, // Fill available height
                        fit: BoxFit
                            .cover, // Maintain aspect ratio and fill width
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    product.title,
                    style: const TextStyle(
                        fontSize: 13.5, fontFamily: "Sans-Regular"),
                  ),
                ),
                const SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    "\Rs.${product.price}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontFamily: "Sans",
                      fontSize: 11.5,
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              child: Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 80, 80, 82).withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(10),
                  )),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                  size: 19,
                ),
              ),
            ),
          ))
        ]));
  }
}
