import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rice_harbor/Provider/cart_provider.dart';
import 'package:rice_harbor/Provider/favorite_provider.dart';
import 'package:rice_harbor/screens/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rice_harbor/Firebase/firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // await FirebaseApi().initNotifications();
  runApp(DevicePreview(
      enabled: !kReleaseMode, builder: ((context) => const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => CartProvider(),
            ),
            ChangeNotifierProvider(
              create: (_) => FavoriteProvider(),
            )
          ],
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: Splash_Screen(),
          ));
}
