import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/circle_phone/circle_phone.dart';
import 'package:flutter_application_1/dpwallpaper/mainPage.dart';
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
                    Mainpage(),
                  );
                },
                child: Icon(Icons.photo_size_select_actual_rounded)),
                SizedBox(width: 10,),
            GestureDetector(
                onTap: () {
                  Get.to(
                    CirclePhone(expectedCode: "1234"),
                  );
                },
                child: Icon(Icons.phone))
          ],
        ),
      ),
    );
  }
}
