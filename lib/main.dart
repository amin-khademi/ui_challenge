import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/circle_phone/circle_phone.dart';
import 'package:flutter_application_1/dpwallpaper/favPage.dart';
import 'package:flutter_application_1/dpwallpaper/imagepage.dart';
import 'package:flutter_application_1/dpwallpaper/mainPage.dart';

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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => CirclePhone(expectedCode: "1234"),
        "mainpage": (context) => const Mainpage(),
        "images": (context) => ImagePage(),
        "favpage": (context) => FavPage(),
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
