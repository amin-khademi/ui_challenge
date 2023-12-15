import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.red,
            height: 80. h,
          ),
          Container(
            color: Colors.green,
            height: 80.h,
          ),
          Container(
            color: Colors.black,
            height: 80.h,
          )
        ],
      ),
    );
  }
}
