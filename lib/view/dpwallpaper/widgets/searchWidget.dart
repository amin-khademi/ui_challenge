import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class MySearch extends SearchDelegate {
  List<String> searchResaults = ["temp1", "temp2", "temp3"];
  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              if (query.isEmpty) {
                close(context, null);
              } else {
                query = "";
              }
            },
            icon: Icon(Icons.clear))
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back));

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> suggestions = searchResaults.where((element) {
      final resault = element.toLowerCase();
      final input = query.toLowerCase();
      return resault.contains(input);
    }).toList();
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final suggestion = suggestions[index];
        return ListTile(
          title: Text(suggestion),
          onTap: () {
            query = suggestion;
          },
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) => Container();
}
