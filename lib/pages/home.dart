import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'To be added: Fridge',
      style: optionStyle,
    ),
    Text(
      'To be added: Shopping List',
      style: optionStyle,
    ),
    Text(
      'To be added: Recipes',
      style: optionStyle,
    ),
    Text(
      'To be added: Barcode Scan',
      style: optionStyle,
    )
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.kitchen),
            title: Text('Fridge'),
            backgroundColor: Colors.green[600],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Shopping List'),
            backgroundColor: Colors.green[600],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_dining),
            title: Text('Recipes'),
            backgroundColor: Colors.green[600],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            title: Text('Scan'),
            backgroundColor: Colors.green[600],
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.green[600],
        unselectedItemColor: Colors.green[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
