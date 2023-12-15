import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/circle_phone/circle_phone.dart';
import 'package:flutter_application_1/view/dpwallpaper/favPage.dart';
import 'package:flutter_application_1/view/dpwallpaper/imagepage.dart';
import 'package:flutter_application_1/view/dpwallpaper/mainPage.dart';
import 'package:flutter_application_1/view/mainScreen/mainScreen.dart';
import 'package:flutter_application_1/view/splash-screen/splash.screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    const MyApp(), // Wrap your app
  );
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
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          builder: DevicePreview.appBuilder,
          locale: DevicePreview.locale(context),
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
      },
    );
  }
}
