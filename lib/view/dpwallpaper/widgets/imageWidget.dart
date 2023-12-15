import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/dpwallpaper/imagepage.dart';
import 'package:dismissible_page/dismissible_page.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
          children: [
            for (int i = 1; i < 9; i++)
              GestureDetector(
                onTap: () {
                  context.pushTransparentRoute(const ImagePage());
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(20)),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Hero(
                          tag: "$i",
                          child: Image.asset(
                            "assets/images/$i.jpg",
                            fit: BoxFit.cover,
                          ))),
                ),
              )
          ],
        ));
  }
}
