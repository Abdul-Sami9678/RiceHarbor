import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rice_harbor/Data/Data.dart';
import 'package:rice_harbor/constants.dart';

class ItemDetails extends StatelessWidget {
  final Product product;
  const ItemDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.title,
          style: const TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 20,
              fontFamily: "Sans-regular"),
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "\Rs.${product.price}",
                  style:
                      const TextStyle(fontSize: 14, fontFamily: "Sans-regular"),
                ),
                const SizedBox(height: 5),
                //For Rating and Review.......
                Row(
                  children: [
                    Container(
                        width: 50,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: kprimaryColor,
                        ),
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(children: [
                          const Icon(
                            Icons.star,
                            size: 12,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Text(product.rate.toString(),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: "Sans-Regular",
                                fontSize: 12,
                              )),
                        ])),
                    const SizedBox(width: 4),
                    Text(
                      product.review,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontFamily: "Sans-Regular",
                        fontSize: 14,
                      ),
                    )
                  ],
                )
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(top: 19),
              child: Text.rich(
                TextSpan(
                  children: [
                    const TextSpan(
                      text: "Supplier: ",
                      style: TextStyle(
                          fontFamily: "Sans-Regular",
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: product.seller,
                      style: const TextStyle(
                        fontFamily: "Sans-Regular",
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
