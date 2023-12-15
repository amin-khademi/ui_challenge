import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/dpwallpaper/widgets/imageWidget.dart';
import 'package:flutter_application_1/view/dpwallpaper/widgets/searchWidget.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
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
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        size: 20,
                      ),
                    ),
                    const Text(
                      "DP wallpaper",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "favpage");
                      },
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
              //search widget
              const SearchWidget(),
              // tab bar
              const TabBar(
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

              const Flexible(
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
          ),
        ),
      ),
    );
  }
}
