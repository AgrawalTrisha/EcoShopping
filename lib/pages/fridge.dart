import 'package:flutter/material.dart';
import 'food.dart';

class Fridge extends StatefulWidget {
  @override
  _FridgeState createState() => _FridgeState();
}

class _FridgeState extends State<Fridge> {
  List<Food> fridge = [Food("Potatoes", 0), Food("Milk", 0), Food("Flour (non-perishable)", 0)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            fridge.add(Food("Carrots", 0));
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
