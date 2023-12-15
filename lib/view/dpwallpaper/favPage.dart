import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/dpwallpaper/widgets/imageWidget.dart';

class FavPage extends StatelessWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 5),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 20,
                  ),
                ),
                const Text(
                  "favorite",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "favPage");
                  },
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.transparent,
                    size: 20,
                  ),
                )
              ],
            ),
          ),
          //search widget

          // tab bar
          Container(
            margin: const EdgeInsets.all(15),
            alignment: Alignment.centerLeft,
            child: const Text(
              "your favorite",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const Flexible(flex: 1, child: ImageWidget())
        ],
      )),
    );
  }
}
