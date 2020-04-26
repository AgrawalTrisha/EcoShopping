import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'fridge.dart';
import 'food.dart';
import 'list.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static List<Food> fridge = new List<Food>();
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Fridge(),
    ShoppingList(),
    Text(
      'Coming soon: Recipes',
      textAlign: TextAlign.center,
      style: GoogleFonts.manrope(
        textStyle: TextStyle(
          fontSize: 30.0,
          letterSpacing: 2.0,
          color: Colors.green[800],
        ),
      ),
    ),
    Text(
      'Coming soon: Barcode Scanning',
      textAlign: TextAlign.center,
      style: GoogleFonts.manrope(
        textStyle: TextStyle(
          fontSize: 30.0,
          letterSpacing: 2.0,
          color: Colors.green[800],
        ),
      ),
    ),
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
        title: Text(
          'EcoShopping',
          style: GoogleFonts.manrope(
            textStyle: TextStyle(
              fontSize: 28.0,
              letterSpacing: 2.0,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.green[600],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.kitchen),
            title: Text(
              'Fridge',
              style: GoogleFonts.manrope(
                textStyle: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
            backgroundColor: Colors.green[600],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text(
              'List',
              style: GoogleFonts.manrope(
                textStyle: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
            backgroundColor: Colors.green[600],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_dining),
            title: Text(
              'Recipes',
              style: GoogleFonts.manrope(
                textStyle: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
            backgroundColor: Colors.green[600],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            title: Text(
              'Scan',
              style: GoogleFonts.manrope(
                textStyle: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
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
