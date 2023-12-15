import 'package:flutter/material.dart';
import 'package:dismissible_page/dismissible_page.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: DismissiblePage(
        onDismissed: () {
          Navigator.of(context).pop();
        },
        direction: DismissiblePageDismissDirection.multi,
        child: Hero(
          tag: "1",
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "images/7.jpg",
                    ),
                    fit: BoxFit.cover)),
            child: Container(
              padding: const EdgeInsets.only(bottom: 10),
              alignment: Alignment.bottomCenter,
              color: Colors.black38,
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.download,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
