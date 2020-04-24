import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(
              child: Text(
                'Welcome to EcoShopping!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  letterSpacing: 2.0,
                  color: Colors.white,
                )
              ),
            ),
            Image.asset('assets/ecoshopping-logo.png'),
            Text(
              "Our app aims to combat food waste by encouraging consumers to think before they buy. With features such as a smart shopping list, an inventory of what's already in your fridge, and recipe suggestions that don't require extra ingredients, EcoShopping asks consumers to consume only what they need and make the most out of what they have.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15.0,
                letterSpacing: 0.5,
                color: Colors.green[50],
              )
            )
          ],
        ),

      ),
      backgroundColor: Colors.green[600],
    );
  }
}
