// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:rice_harbor/Data/Data.dart';
// import 'package:rice_harbor/screens/Image_Viewer/Image_viewer_helper.dart';

// class Final_View extends StatefulWidget {
//   const Final_View({super.key});

//   @override
//   State<Final_View> createState() => _Final_ViewState();
// }

// class _Final_ViewState extends State<Final_View> {
//   @override
//   Widget build(BuildContext context) {
//     Size size;
//     double height, width;

//     size = MediaQuery.of(context).size;
//     height = size.height;
//     width = size.width;
//     return Scaffold(
//       body: Stack(children: [
//         Column(
//           children: [
//             SizedBox(
//               height: 100,
//               width: 100,
//               child: Stack(
//                 children: [
//                   CarouselSlider(
//                       items: AppData.innerStyleImages.map((imagePath) {
//                         return Builder(
//                           builder: (BuildContext context) {
//                             /// Custom Image Viewer widget
//                             return CustomImageViewer.show(
//                               context: context,
//                               url: imagePath,
//                               fit: BoxFit.cover,
//                             );
//                           },
//                         );
//                       }).toList(),
//                       options:
//                           CarouselOptions(autoPlayCurve: Curves.easeInOut)),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ]),
//     );
//   }
// }
