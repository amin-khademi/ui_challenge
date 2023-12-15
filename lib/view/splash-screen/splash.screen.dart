import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/mainScreen/mainScreen.dart';
import 'package:flutter_application_1/view/onboarding/onboarding.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Get.to(const OnBoardingPage());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber.shade100,
        body: Center(child: Lottie.asset("assets/lottie/ui.json")));
  }
}
