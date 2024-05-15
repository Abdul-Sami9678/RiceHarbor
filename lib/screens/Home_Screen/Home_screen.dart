import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:rice_harbor/screens/Tabs_Options/Account.dart';
import 'package:rice_harbor/screens/Tabs_Options/Cart.dart';
import 'package:rice_harbor/screens/Tabs_Options/Home.dart';
import 'package:rice_harbor/screens/Tabs_Options/Saved.dart';
import 'package:rice_harbor/screens/Tabs_Options/Search.dart';
import 'package:rice_harbor/screens/Tabs_Options/Trends.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int myIndex = 0;
  void _navigatebottomnavbar(int index) {
    setState(() {
      myIndex = index;
    });
  }

  List<Widget> pageList = <Widget>[
    const Main_Home(),
    const Saved(),
    const CartScreen(),
    const Account(),
  ];
  Future<void> _handletoRefresh() async {
    return await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[myIndex],
      backgroundColor: Color(0XFFFFFFFF),
      extendBodyBehindAppBar: true,
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Material(
          elevation: 0,
          child: BottomNavigationBar(
              backgroundColor: Color(0XFFFFFFFF),
              unselectedItemColor: Color.fromARGB(223, 136, 134, 134),
              currentIndex: myIndex,
              onTap: _navigatebottomnavbar,
              selectedItemColor: const Color.fromARGB(
                  255, 10, 10, 10), // Text color when selected
              elevation: 8,
              selectedFontSize: 13, // Text size when selected
              unselectedFontSize: 13, // Text size when unselected
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: ImageIcon(AssetImage('assets/images/icons/Home.png')),
                ),
                BottomNavigationBarItem(
                  label: 'Trends',
                  icon: ImageIcon(AssetImage('assets/images/icons/Home.png')),
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icons/Saved.png')),
                  label: 'Saved',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/icons/Cart.png')),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon:
                      ImageIcon(AssetImage('assets/images/icons/Account.png')),
                  label: 'Account',
                ),
              ]),
        ),
      ),
    );
  }
}
