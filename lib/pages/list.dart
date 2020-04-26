import 'package:flutter/material.dart';
import 'food.dart';

class ShoppingList extends StatefulWidget {
  @override
  _ShoppingListState createState() => _ShoppingListState();
}

class _ShoppingListState extends State<ShoppingList> {
  List<Food> fridge = [Food("Bread", 0), Food("Eggs", 0), Food("Cheese", 0)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            fridge.add(Food("Sugar", 0));
          });
        },
        backgroundColor: Colors.green[600],
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: fridge.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.grey[200],
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 16, 10, 0),
              child: Text(
                '${fridge[index].name}',
                textAlign: TextAlign.left,
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(
            height: 5,
          );
        },
      ),
    );
  }
}
