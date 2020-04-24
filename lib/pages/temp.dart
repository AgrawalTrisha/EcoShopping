import 'package:flutter/material.dart';

class ListSupport extends StatefulWidget {
  @override
  ListState createState() => ListState();
}

class ListState extends State<ListSupport> {
  final List<String> foods = <String>['eggs', 'milk', 'cheese'];
  Widget _buildList(BuildContext context) {
    ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: foods.length,
      itemBuilder: (BuildContext context, int i) {
        return Container(
          height: 50,
          color: Colors.green[600],
          child: Center(child: Text(foods[i])),
        );
      },
      separatorBuilder: (BuildContext context, int i) => const Divider(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}