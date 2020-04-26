import 'package:flutter/material.dart';
import 'food.dart';
import 'fridgeForm.dart';

class Fridge extends StatefulWidget {
  @override
  _FridgeState createState() => _FridgeState();
}

class _FridgeState extends State<Fridge> {
  List<Food> fridge = [new Food("Potatos", 14), new Food("Milk", 15), new Food("Flour (unperishable)", 16)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            child: FridgeForm(
              add: () {
                setState(() {
                  fridge.add(new Food("potato", 0));
                });
              },
            ),
          );
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
                fridge[index].name,
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
