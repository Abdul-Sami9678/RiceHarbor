import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:group_button/group_button.dart';
import 'package:rice_harbor/Data/Data.dart';
import 'package:rice_harbor/screens/Image_Viewer/Image_viewer_helper.dart';
import 'package:rice_harbor/screens/Notifications/Notification.dart';
import 'package:rice_harbor/screens/Tabs_Options/Components/Categories.dart';
import 'package:rice_harbor/screens/Tabs_Options/Components/Image_slider.dart';
import 'package:rice_harbor/screens/Tabs_Options/Components/Product_Cart.dart';
import 'package:rice_harbor/screens/Tabs_Options/Home/Custom_AppBar.dart';
import 'package:rice_harbor/screens/Tabs_Options/Search/Search_bar.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

late List<Widget> _pages;

class Main_Home extends StatefulWidget {
  const Main_Home({super.key});

  @override
  State<Main_Home> createState() => _Main_HomeState();
}

class _Main_HomeState extends State<Main_Home> {
  int CurrentSlider = 0;
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
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 22,
                    ),

                    //Custom-App Bar...............
                    CustomAppBar(),
                    SizedBox(
                      height: 7,
                    ),
                    //Search Bar...............
                    Search_Bar(),
                    SizedBox(
                      height: 10,
                    ),
                    //Image_Slider.............
                    ImageSlider(
                      currentSlide: CurrentSlider,
                      onChange: (value) {
                        setState(() {
                          CurrentSlider = value;
                        });
                      },
                    ),
                    //Categories Selection..............
                    Categories(),
                    //For Product Details..............
                    GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: productItems.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20,
                            childAspectRatio: 0.78,
                            crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          return ProductCart(product: productItems[index]);
                        })
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
