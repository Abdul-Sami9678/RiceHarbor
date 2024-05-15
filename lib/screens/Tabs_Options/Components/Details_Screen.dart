import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rice_harbor/Data/Data.dart';
import 'package:rice_harbor/constants.dart';
import 'package:rice_harbor/screens/Tabs_Options/Components/Add_to_cart.dart';
import 'package:rice_harbor/screens/Tabs_Options/Components/AppBar_DetailsScreen/AppBar_DetailsScreen.dart';
import 'package:rice_harbor/screens/Tabs_Options/Components/Description_Product/description_product.dart';
import 'package:rice_harbor/screens/Tabs_Options/Components/Detail_ImageScreen/detail_Image_slider.dart';
import 'package:rice_harbor/screens/Tabs_Options/Components/Product_Details/product_details.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int CurrentImage = 0;
  int currentSlide = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Add to Cart Functionality..............
      floatingActionButton: AddtoCart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: kcontentColor,
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //APPBAR-Buttons.........
            DetailAppBar(),
            //Detail Image Screen..........
            MyImageSlider(
                image: widget.product.image,
                onChange: (index) {
                  setState(() {
                    CurrentImage = index;
                  });
                }),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: CurrentImage == index ? 19 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CurrentImage == index
                        ? Colors.black
                        : Colors.transparent,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
                bottom: 100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Product Details Show...........
                  ItemDetails(product: widget.product),
                  SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Quantity",
                    style: TextStyle(
                        fontFamily: "Sans-Regular",
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),

                  const Text(
                    "KiloGram",
                    style: TextStyle(fontFamily: "Sans-Regular", fontSize: 14),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  //For Description...........
                  Description(description: widget.product.description),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
