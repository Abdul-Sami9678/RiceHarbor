import 'package:flutter/material.dart';
import 'package:rice_harbor/Provider/favorite_provider.dart';
import 'package:rice_harbor/screens/Home_Screen/Home_screen.dart';

import '../../constants.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    final finalList = provider.favorites;
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home_Screen(),
                        ),
                      );
                    },
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    icon: ImageIcon(
                      AssetImage('assets/images/icons/Back.png'),
                      size: 30,
                    ),
                  ),
                  Container(
                    height: 33,
                    width: 145,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/Cart/SI.png'))),
                  ),
                  Container(
                    height: 28,
                    width: 28,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/icons/Bell.png'))),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[400],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: finalList.length,
                  itemBuilder: (context, index) {
                    final favoritItems = finalList[index];
                    return Stack(
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.all(15.0),
                        //   child:
                        //   Container(
                        //     width: double.infinity,
                        //     decoration: BoxDecoration(
                        //       color: Colors.white,
                        //       borderRadius: BorderRadius.circular(20),
                        //     ),
                        //     padding: const EdgeInsets.all(10),
                        //     child: Row(
                        //       children: [
                        //         Container(
                        //           height: 90,
                        //           width: 90,
                        //           decoration: BoxDecoration(
                        //             color: kcontentColor,
                        //             borderRadius: BorderRadius.circular(20),
                        //           ),
                        //           padding: const EdgeInsets.all(10),
                        //           child: Image.asset(
                        //             favoritItems.image,
                        //           ),
                        //         ),
                        //         const SizedBox(width: 10),
                        //         Column(
                        //           crossAxisAlignment: CrossAxisAlignment.start,
                        //           children: [
                        //             Text(
                        //               favoritItems.title,
                        //               style: const TextStyle(
                        //                 fontSize: 18,
                        //                 fontWeight: FontWeight.bold,
                        //               ),
                        //             ),
                        //             const SizedBox(height: 5),
                        //             Text(
                        //               favoritItems.category,
                        //               style: const TextStyle(
                        //                 fontSize: 14,
                        //                 fontWeight: FontWeight.bold,
                        //                 color: Colors.grey,
                        //               ),
                        //             ),
                        //             const SizedBox(height: 8),
                        //             Text(
                        //               "\Rs.${favoritItems.price}",
                        //               style: const TextStyle(
                        //                 fontSize: 15,
                        //                 fontWeight: FontWeight.bold,
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset(
                                    favoritItems.image,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    favoritItems.title,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Sans-Regular",
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    favoritItems.category,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontFamily: "Sans-Regular",
                                      color: Colors.grey,
                                    ),
                                  ),
                                  const SizedBox(height: 3),
                                  Text(
                                    "\Rs.${favoritItems.price}",
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontFamily: "Sans-Regular",
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 50,
                          right: 40,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  finalList.removeAt(index);
                                  setState(
                                    () {},
                                  );
                                },
                                child: const Icon(Icons.delete,
                                    color: Colors.red, size: 25),
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
