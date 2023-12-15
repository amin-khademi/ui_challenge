import 'package:flutter/material.dart';
import 'package:flutter_application_1/circle_phone/circle_phone.dart';
import 'package:flutter_application_1/dpwallpaper/mainPage.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            
            GestureDetector(
                onTap: () {
                  Get.to(
                    const MainPage(),
                  );
                },
                child: const Icon(Icons.photo_size_select_actual_rounded)),
            const SizedBox(
              width: 10,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(
                    const CirclePhone(expectedCode: "1234"),
                  );
                },
                child: const Icon(Icons.phone))
          ],
        ),
      ),
    );
  }
}
