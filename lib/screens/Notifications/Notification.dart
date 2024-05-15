import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

class Notification_Messages extends StatefulWidget {
  const Notification_Messages({super.key});

  @override
  State<Notification_Messages> createState() => _Notification_MessagesState();
}

class _Notification_MessagesState extends State<Notification_Messages> {
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
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 22,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TouchableOpacity(
                          activeOpacity: 0.3,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              height: 35,
                              width: 35,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/icons/Back.png'))),
                            ),
                          ),
                        ),
                        Container(
                          height: 33,
                          width: 147,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Notifications.png'))),
                        ),
                        Container(
                          height: 28,
                          width: 28,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/icons/Bell.png'))),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9),
                      child: Divider(
                        height: 55,
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    SizedBox(
                      height: 175,
                    ),
                    Center(
                      child: Container(
                        height: 68,
                        width: 68,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/icons/Bell1.png'))),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Container(
                        height: 48,
                        width: 225,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/Notifications1.png'))),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      child: Center(
                        child: Text(
                          "We’all alert you when something\n cool happens.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: ('Sans-Regular'),
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
