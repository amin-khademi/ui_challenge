import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 55,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const SizedBox(
          width: 250,
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none, hintText: "search here..."),
          ),
        ),
        InkWell(
          child: const Icon(Icons.search),
          onTap: () {},
        )
      ]),
    );
  }
}