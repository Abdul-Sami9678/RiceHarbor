import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';
import 'package:sizer/sizer.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class Search_Bar extends StatefulWidget {
  const Search_Bar({super.key});

  @override
  State<Search_Bar> createState() => _Search_BarState();
}

class _Search_BarState extends State<Search_Bar> {
  double Currentslidervalue =
      1; //Slider Value Default for search filters............
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: MediaQuery.of(context).size.height *
              0.065, // 10% of screen height
          width:
              MediaQuery.of(context).size.width * 0.662, // 80% of screen width
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: Colors.grey.withOpacity(0.5),
              )),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Image.asset(
                'assets/images/icons/Search_Icon.png', // Path to your search icon image
                width: 24.0,
                height: 24.0,
                color: Colors
                    .grey, // You can adjust the color of the icon if needed
              ),
              SizedBox(width: 16.0),
              const Expanded(
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Search for rice...',
                    hintStyle: TextStyle(
                        fontSize: 16,
                        fontFamily: ('Sans-Regular'),
                        fontWeight: FontWeight.w200,
                        color: Colors.grey),
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                icon: Image.asset(
                  'assets/images/icons/Mic.png', // Path to your microphone icon image
                  width: 24.0,
                  height: 24.0,
                  color: Colors
                      .grey, // You can adjust the color of the icon if needed
                ),
                onPressed: () {
                  // Call onTap function when the mic icon is tapped
                },
              ),
            ],
          ),
        ),
        SizedBox(
          width: 4,
        ),
        IconButton(
          onPressed: () {
            showModalBottomSheet(
                isDismissible: false,
                backgroundColor: Color(0XFFFFFFFF),
                context: context,
                builder: (context) => Container(
                    height: 2000,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: Container(
                              height: 6,
                              width: 64,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/icons/slide.png'))),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 26,
                                width: MediaQuery.of(context).size.width * 0.65,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Filters.png'))),
                              ),
                              TouchableOpacity(
                                activeOpacity: 0.3,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                    height: 27,
                                    width: 27,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/icons/Cancel.png'))),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Container(
                            height: 15,
                            width: 500,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/icons/Line.png'))),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Container(
                            height: 23,
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/Sort.png'))),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                GroupButton(
                                  buttons: [
                                    "Relevance",
                                    "Price: Low - High",
                                    "Price: High - Low",
                                  ],
                                  options: GroupButtonOptions(
                                      unselectedShadow: List.empty(),
                                      selectedTextStyle: TextStyle(
                                        fontFamily: 'Sans',
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                      spacing: 5,
                                      unselectedBorderColor:
                                          Color.fromARGB(255, 235, 230, 230),
                                      unselectedColor: Colors.transparent,
                                      borderRadius: BorderRadius.circular(12),
                                      selectedColor: Colors.black,
                                      buttonHeight: 36,
                                      buttonWidth: 170),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 22),
                          Container(
                            height: 15,
                            width: 500,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/icons/Line.png'))),
                          ),
                          SizedBox(height: 14),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 24,
                                width: 44,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Price.png'))),
                              ),
                              Text(
                                '0 - 200k',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontFamily: ('Sans-Regular'),
                                ),
                              ),
                            ],
                          ),
                          Slider(
                              activeColor: Colors.black,
                              value: Currentslidervalue,
                              max: 100,
                              divisions: 100,
                              label: Currentslidervalue.round().toString(),
                              onChanged: (double value) {
                                print(value);
                                setState(() {
                                  Currentslidervalue = value;
                                });
                              }),
                          SizedBox(height: 11),
                          Container(
                            height: 15,
                            width: 500,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/icons/Line.png'))),
                          ),
                          SizedBox(height: 17),
                          Container(
                              alignment: Alignment.center,
                              height: 57,
                              width: 342,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 9, 9, 9),
                                  borderRadius: BorderRadius.circular(12)),
                              child: TouchableOpacity(
                                activeOpacity: 0.3,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: const Text(
                                    'Apply Filters',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.5,
                                      fontFamily: ('Sans'),
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    )));
          },
          icon: Image.asset(
            'assets/images/icons/Filter.png',
            height: 54,
            width: 54,
          ),
        )
      ],
    );
  }
}
