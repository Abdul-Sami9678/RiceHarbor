import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final String category;

  final double rate;
  int quantity;

  Product(
      {required this.title,
      required this.review,
      required this.description,
      required this.image,
      required this.price,
      required this.seller,
      required this.category,
      required this.rate,
      required this.quantity});
}

// list of products
final productItems = [
  Product(
      title: "Super Basmati",
      image: "assets/images/Pictures/SB.jpg",
      price: 419,
      review: "(300 Reviews)",
      category: "Rice",
      quantity: 1,
      rate: 4.8,
      seller: "Kohinoor Rice Mills",
      description:
          "Super Basmati rice, prized for its fragrant aroma and slender grains, originates from the Himalayan foothills. Its elongated grains, when cooked, yield a light and fluffy texture, ideal for various dishes. With its low glycemic index, it's a preferred choice for health-conscious individuals. Renowned for its flavor-absorbing properties, Super Basmati enhances the taste of diverse cuisines. Its versatility extends to both savory and sweet recipes, making it a kitchen staple. Whether in biryanis or pilafs, it promises a delightful dining experience."),
  Product(
      title: "Brown Rice",
      image: "assets/images/Pictures/BR1.jpg",
      price: 540,
      rate: 5,
      review: "(32 Reviews)",
      category: "Rice",
      quantity: 1,
      seller: "Sarim International",
      description:
          "Brown rice, retaining its bran layer and germ, offers a nuttier flavor and chewier texture than white rice, enriching dishes with depth. Rich in fiber, magnesium, and selenium, it promotes digestive health and blood sugar management. Versatile in various cuisines, from Asian stir-fries to grain bowls, it requires a longer cooking time due to its intact bran layer. While its appearance may be less polished, its nutritional value is undeniable, making it a wholesome choice for health-conscious individuals. Its earthy flavor and nutritional profile have made it a staple in households worldwide."),
  Product(
      title: "Super Kernel",
      image: "assets/images/Pictures/SK.jpeg",
      price: 279,
      rate: 5,
      review: "(43 Reviews)",
      category: "Rice",
      quantity: 1,
      seller: "Asia Foods International",
      description:
          "Super Kernel Basmati rice, celebrated for its exceptional quality, originates from the fertile lands of the Himalayan region. With its long, slender grains and delicate aroma, it is renowned for its exquisite taste and fragrance. When cooked, its grains elongate and remain separate, resulting in a fluffy texture that is highly prized in culinary circles. Its ability to absorb flavors makes it an ideal choice for a wide range of dishes, from biryanis to pilafs. Super Kernel Basmati rice is known for its low glycemic index, making it a preferred option for those seeking healthier dietary choices."),
  Product(
      title: "Jasmine Rice",
      image: "assets/images/Pictures/JR.jpeg",
      price: 990,
      rate: 5,
      review: "(67 Reviews)",
      category: "Rice",
      quantity: 1,
      seller: "A.R Enterprises",
      description:
          "Jasmine rice, cherished for its delicate aroma and soft, slightly sticky texture, hails from Thailand. With its fragrant scent reminiscent of pandan leaves, it adds a subtle floral note to dishes. Renowned for its versatility, it pairs excellently with a variety of cuisines, from Asian stir-fries to coconut-infused desserts. Its grains remain tender yet separate when cooked, offering a satisfying mouthfeel. Jasmine rice is a source of complex carbohydrates and essential nutrients, contributing to a balanced diet. Its popularity extends beyond Thailand, making it a beloved choice worldwide."),
  Product(
      title: "Arborio",
      image: "assets/images/Pictures/AR.png",
      price: 450,
      rate: 5,
      review: "(101 Reviews)",
      category: "Rice",
      quantity: 1,
      seller: "Matco Foods Limited",
      description:
          "Arborio rice, originating from Italy, is renowned for its creamy texture and ability to absorb flavors. With its short, plump grains and high starch content, it is the quintessential rice for risotto. Its unique cooking method involves gradually adding broth, resulting in a dish with a rich, velvety consistency. Arborio rice releases its starch slowly during cooking, creating a luxurious, creamy sauce that coats each grain. Its firm exterior allows it to maintain its shape while cooking, ensuring a satisfying bite. Beyond risotto, Arborio rice can be used in various dishes, from rice pudding to stuffed vegetables."),
  Product(
      title: "Basmati",
      image: "assets/images/Pictures/BR.jpg",
      price: 415,
      rate: 4.5,
      review: "(112 Reviews)",
      category: "Rice",
      quantity: 1,
      seller: "Alfarid Corporation",
      description:
          "Basmati rice, originating from the Indian subcontinent, is renowned for its distinct aroma and elongated grains. With a delicate fragrance reminiscent of pandan leaves, it adds a subtle yet flavorful touch to dishes. Its slender grains remain separate and fluffy when cooked, creating a light and airy texture. Basmati rice is prized for its versatility, complementing a wide range of cuisines from Indian biryanis to Middle Eastern pilafs. Known for its low to medium glycemic index, it is a favored choice for those seeking healthier dietary options. Its popularity extends globally, making it a staple in households and restaurants alike."),
  Product(
      title: "Basmati-1121",
      image: "assets/images/Pictures/BR1121.png",
      price: 267,
      rate: 5,
      review: "(34 Reviews)",
      category: "Rice",
      quantity: 1,
      seller: "M/s. Rice International",
      description:
          "Basmati-1121, a premium variety of Basmati rice, is celebrated for its exceptional quality and long, slender grains. Originating from the Indian subcontinent, it boasts a distinct aroma and delicate flavor profile. When cooked, its grains elongate further, producing a light and fluffy texture that is highly sought after. Renowned for its versatility, Basmati-1121 is a preferred choice for various cuisines, from traditional Indian biryanis to exotic pilafs. With its low to medium glycemic index, it is favored by health-conscious individuals seeking nutritious dietary options. Its popularity transcends borders, making it a staple ingredient in kitchens worldwide."),
  Product(
      title: "Long Grain",
      image: "assets/images/Pictures/LG.webp",
      price: 360,
      rate: 5,
      review: "(67 Reviews)",
      category: "Rice",
      quantity: 1,
      seller: "Kohinoor Rice Mills",
      description:
          "Long-grain rice, a staple in many cuisines, boasts slender grains that remain separate and fluffy when cooked. Its versatility makes it suitable for dishes ranging from pilafs to stir-fries. Known for its mild flavor, it complements a wide array of ingredients and spices, making it a popular choice worldwide. With its elongated grains, long-grain rice also absorbs flavors exceptionally well, enhancing the taste of dishes it is cooked with. Additionally, its firm texture holds up during cooking, ensuring a satisfying bite in every dish."),
];



// class Product {
//   final String image, title, description;
//   final int price, id;
//   final Color color;

//   Product(
//       {required this.image,
//       required this.title,
//       required this.description,
//       required this.price,
//       required this.id,
//       required this.color});
// }

// List<Product> products = [
//   Product(
//       id: 1,
//       title: "Arborio",
//       price: 450,
//       description:
//           "Arborio rice is a short-grain Italian rice known for its creamy texture and ability to absorb flavors well, making it ideal for risottos and rice puddings. Its high starch content gives dishes a luxurious, velvety consistency, while maintaining a firm bite in the center, distinguishing it from other rice varieties.",
//       image: "assets/images/Pictures/AR.png",
//       color: Colors.white),
//   Product(
//       id: 2,
//       title: "Basmati",
//       price: 415,
//       description:
//           "Basmati rice is a long-grain variety known for its distinctive aroma, delicate flavor, and slender shape. Originating from the Indian subcontinent, particularly Pakistan and India, Basmati rice cooks up fluffy and separate, making it perfect for pilafs, biryanis, and other rice-based dishes.",
//       image: "assets/images/Pictures/BR.png",
//       color: Colors.white),
//   Product(
//       id: 3,
//       title: "Super Basmati",
//       price: 419,
//       description:
//           "Super Basmati rice is a premium variety of Basmati known for its extra-long grains, exquisite aroma, and superior taste. Cultivated primarily in the Punjab region of Pakistan, Super Basmati rice is celebrated for its fluffy texture and ability to elongate when cooked.",
//       image: "assets/images/Pictures/SB.png",
//       color: Colors.white),
//   Product(
//       id: 4,
//       title: "Brown Rice",
//       price: 540,
//       description:
//           "Brown rice is a whole grain rice variety that retains its bran layer and germ, making it more nutritious than white rice. With a nuttier flavor and chewier texture, brown rice is rich in fiber, vitamins, and minerals. Its unrefined nature provides added health benefits.",
//       image: "assets/images/Pictures/BR1.jpg",
//       color: Colors.white),
//   Product(
//       id: 5,
//       title: "Super Kernel",
//       price: 279,
//       description:
//           "Super Kernel rice is a premium long-grain rice variety primarily cultivated in Pakistan. Known for its extra-long grains, superior quality, and excellent aroma, Super Kernel rice is favored for its fluffy texture and ability to elongate when cooked.",
//       image: "assets/images/Pictures/SK.jpg",
//       color: Colors.white),
//   Product(
//     id: 6,
//     title: "Jasmine Rice",
//     price: 990,
//     description:
//         "Jasmine rice is a long-grain variety native to Thailand, prized for its fragrant aroma, soft texture, and slightly sweet flavor. With its subtle floral scent reminiscent of jasmine flowers, this rice pairs well with a variety of dishes, particularly Asian cuisines.",
//     image: "assets/images/Pictures/JR.jpeg",
//     color: (Colors.white),
//   ),
//   Product(
//     id: 7,
//     title: "Basmati-1121",
//     price: 267,
//     description:
//         "Basmati 1121 rice is a premium long-grain rice variety cultivated primarily in India and Pakistan. Renowned for its exceptionally long grains, exquisite aroma, and delicate flavor, Basmati 1121 rice is highly sought after in international markets. It cooks up fluffy and separate, making it perfect for \bBiryanis.",
//     image: "assets/images/Pictures/BR1121.png",
//     color: (Colors.white),
//   ),
//   Product(
//     id: 8,
//     title: "Long Grain",
//     price: 360,
//     description:
//         "Long grain rice is a versatile rice variety with slender grains that are longer than they are wide. Known for its fluffy texture and ability to remain separate when cooked, long grain rice is a staple in many cuisines around the world.",
//     image: "assets/images/Pictures/LG.webp",
//     color: (Colors.white),
//   ),
// ];
