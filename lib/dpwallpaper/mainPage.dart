import 'package:flutter/material.dart';
import 'package:flutter_application_1/dpwallpaper/widgets/imageWidget.dart';
import 'package:flutter_application_1/dpwallpaper/widgets/searchWidget.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
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
                    Icon(
                      Icons.menu,
                      size: 20,
                    ),
                    Text(
                      "DP wallpaper",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "favpage");
                      },
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
              //search widget
              SearchWidget(),
              // tab bar
              TabBar(
                  isScrollable: true,
                  labelColor: Colors.orange,
                  labelStyle:
                      TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  indicator: BoxDecoration(
                      border: Border(bottom: BorderSide(width: 2))),
                  tabs: [
                    Tab(
                      text: "all",
                    ),
                    Tab(
                      text: "Featured",
                    ),
                    Tab(
                      text: "Trending",
                    ),
                    Tab(
                      text: "Nature",
                    ),
                    Tab(
                      text: "Sky",
                    ),
                    Tab(
                      text: "See",
                    ),
                  ]),

              Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      ImageWidget(),
                      ImageWidget(),
                      ImageWidget(),
                      ImageWidget(),
                      ImageWidget(),
                      ImageWidget(),
                    ],
                  ))
            ],
          )),
        ));
  }
}
