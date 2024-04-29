import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:rice_harbor/screens/Tabs_Options/Account.dart';
import 'package:rice_harbor/screens/Tabs_Options/Cart.dart';
import 'package:rice_harbor/screens/Tabs_Options/Home.dart';
import 'package:rice_harbor/screens/Tabs_Options/Saved.dart';
import 'package:rice_harbor/screens/Tabs_Options/Search.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int myIndex = 0;
  List<Widget> pageList = <Widget>[
    const Main_Home(),
    const Search(),
    const Saved(),
    const Cart(),
    const Account(),
  ];
  Future<void> _handletoRefresh() async {
    return await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
            currentIndex: myIndex,
            backgroundColor: Colors.white60,
            height: 60,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: 'Home',
                icon: ImageIcon(AssetImage('assets/images/icons/Home.png')),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                    AssetImage('assets/images/icons/Search_Icon.png')),
                label: 'Search',
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
                icon: ImageIcon(AssetImage('assets/images/icons/Account.png')),
                label: 'Account',
              ),
            ]),
        tabBuilder: ((context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(child: Main_Home());
                },
              );
            case 1:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(child: Search());
                },
              );
            case 2:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(child: Saved());
                },
              );
            case 3:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(child: Cart());
                },
              );
            case 4:
              return CupertinoTabView(
                builder: (context) {
                  return CupertinoPageScaffold(child: Account());
                },
              );
          }
          return Container();
        }));
  }
}
