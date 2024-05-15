import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rice_harbor/Provider/cart_provider.dart';
import 'package:rice_harbor/screens/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rice_harbor/Firebase/firebase_options.dart';
import 'package:provider/provider.dart';
//import 'package:device_preview/device_preview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCWwQC2EzFcauhOOq_BksdFiU5aDBIbDuM",
            authDomain: "rice-harbor-app.firebaseapp.com",
            projectId: "rice-harbor-app",
            storageBucket: "rice-harbor-app.appspot.com",
            messagingSenderId: "449669843957",
            appId: "1:449669843957:web:4e11b3f56fd27dad572ebc",
            measurementId: "G-SV3G22WD27"));
  }
  else {
    await Firebase.initializeApp();
  }
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => CartProvider(),
            )
          ],
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: Splash_Screen(),
          ));
}
