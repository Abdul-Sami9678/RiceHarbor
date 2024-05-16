import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rice_harbor/screens/Home_Screen/Home_screen.dart';
import 'package:rice_harbor/screens/Login_Signup/Log.dart';
import 'package:rice_harbor/screens/Tabs_Options/Account_Screens/Address.dart';
import 'package:rice_harbor/screens/Tabs_Options/Account_Screens/Help_Center.dart';
import 'package:rice_harbor/screens/Tabs_Options/Account_Screens/My_Details.dart';
import 'package:rice_harbor/screens/Tabs_Options/Account_Screens/My_Orders.dart';
import 'package:rice_harbor/screens/Tabs_Options/Account_Screens/Payment_method.dart';
import 'package:rice_harbor/screens/Tabs_Options/Account_Screens/Questions.dart';
import 'package:sizer/sizer.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFFFFFF),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
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
                  width: 105,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/Cart/A.png'))),
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
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //My Orders..................
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/icons/Box.png'))),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'My Orders',
                  style: TextStyle(
                      fontFamily: "Sans-Regular",
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 174,
                ),
                TouchableOpacity(
                  activeOpacity: 0.3,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyOrders()));
                    },
                    child: Container(
                      height: 33,
                      width: 33,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/icons/Ok.png'))),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // My Details..............
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/icons/Details.png'))),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'My Details',
                  style: TextStyle(
                      fontFamily: "Sans-Regular",
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 174,
                ),
                TouchableOpacity(
                  activeOpacity: 0.3,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyDetails()));
                    },
                    child: Container(
                      height: 33,
                      width: 33,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/icons/Ok.png'))),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // My Address.............
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/icons/Address.png'))),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Address Book',
                  style: TextStyle(
                      fontFamily: "Sans-Regular",
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 146,
                ),
                TouchableOpacity(
                  activeOpacity: 0.3,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => My_Address()));
                    },
                    child: Container(
                      height: 33,
                      width: 33,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/icons/Ok.png'))),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // My Payment...............
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/icons/Card.png'))),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Payment Methods',
                  style: TextStyle(
                      fontFamily: "Sans-Regular",
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 108,
                ),
                TouchableOpacity(
                  activeOpacity: 0.3,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Payment_Methods()));
                    },
                    child: Container(
                      height: 33,
                      width: 33,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/icons/Ok.png'))),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // FAQs..................
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/images/icons/Question.png'))),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'FAQs',
                  style: TextStyle(
                      fontFamily: "Sans-Regular",
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 215,
                ),
                TouchableOpacity(
                  activeOpacity: 0.3,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Questions()));
                    },
                    child: Container(
                      height: 33,
                      width: 33,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/icons/Ok.png'))),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // Help Center............
            Row(
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/icons/HP.png'))),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Help Center',
                  style: TextStyle(
                      fontFamily: "Sans-Regular",
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 155,
                ),
                TouchableOpacity(
                  activeOpacity: 0.3,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Help_Center()));
                    },
                    child: Container(
                      height: 33,
                      width: 33,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/icons/Ok.png'))),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            // Logout Session..............
            Row(
              children: [
                TouchableOpacity(
                  activeOpacity: 0.3,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login_Screen()));
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/icons/Logout.png'))),
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  'Logout',
                  style: TextStyle(
                      fontFamily: "Sans-Regular",
                      fontSize: 18,
                      color: const Color.fromARGB(255, 239, 62, 49),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
