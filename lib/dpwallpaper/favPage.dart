import 'package:flutter/material.dart';
import 'package:flutter_application_1/dpwallpaper/widgets/imageWidget.dart';
import 'package:flutter_application_1/dpwallpaper/widgets/searchWidget.dart';

class FavPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 20,
                  ),
                ),
                Text(
                  "favorite",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "favPage");
                  },
                  child: Icon(
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
            margin: EdgeInsets.all(15),
            alignment: Alignment.centerLeft,
            child: Text(
              "your favorite",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),

          ),
          Flexible(flex: 1,child: ImageWidget())
        ],
      )),
    );
  }
}
