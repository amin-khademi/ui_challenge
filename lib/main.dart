import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/circle_phone/circle_phone.dart';
import 'package:flutter_application_1/view/dpwallpaper/favPage.dart';
import 'package:flutter_application_1/view/dpwallpaper/imagepage.dart';
import 'package:flutter_application_1/view/dpwallpaper/mainPage.dart';
import 'package:flutter_application_1/view/mainScreen/mainScreen.dart';
import 'package:flutter_application_1/view/splash-screen/splash.screen.dart';
import 'package:get/get.dart';
import 'package:quick_actions/quick_actions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  // This widget is the root of your application.
  @override
  void initState() {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const SplashScreen(),
        "mainScreen": (context) => const MainScreen(),
        "circlePhone": (context) => const CirclePhone(expectedCode: "1234"),
        "mainpage": (context) => const MainPage(),
        "images": (context) => const ImagePage(),
        "favpage": (context) => const FavPage(),
      },
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: DpWallpaper(),
    );
  }
}
