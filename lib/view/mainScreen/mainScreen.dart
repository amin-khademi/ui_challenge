import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/circle_phone/circle_phone.dart';
import 'package:flutter_application_1/view/dpwallpaper/mainPage.dart';
import 'package:flutter_application_1/view/responsive/responsive.dart';
import 'package:get/get.dart';

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
                child: const Icon(Icons.phone)),
            GestureDetector(
                onTap: () {
                  Get.to(const Responsive());
                },
                child: const Icon(Icons.photo_size_select_actual_rounded))
          ],
        ),
      ),
    );
  }
}
