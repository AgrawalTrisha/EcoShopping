import 'package:flutter/material.dart';
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map jsonResult;
  Map<String, List<String>> categories = {};
  List<String> keys;
  Map<String, int> count;
  void getData() async {
    String data = await DefaultAssetBundle.of(context).loadString("assets/categories.json");
    jsonResult = json.decode(data);
    keys = jsonResult.keys.toList();
    print(jsonResult);
    for(String key in keys)
    {
        List<String> temp = jsonResult[key].toString().replaceAll("{name:", "").replaceAll("[", "").replaceAll("}", "").replaceAll("]", "").split(", ").toList();
        categories[key] = temp;
        for(String str in temp)
          count[str] = 0;
    }
    /*for(String key in keys){
      print(jsonResult[key].toString());
      Map temp = jsonDecode(jsonResult[key]);
      //List<String> temp = (jsonResult[key] as List)?.map((item) => item as String)?.toList();
      //List<String> temp = (jsonResult[key].toString()).split(",").toList();
      //List<String> temp = jsonResult[key].split(",").toList();
      //categories[key] = temp;
      //categories[key] = temp;
      print(temp);
    }*/

  }
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//  static List<Widget> _widgetOptions = <Widget>[
//    Column(
//      children: <Widget>[
//        RaisedButton(
//          child: Text("View Fridge"),
//          color: Colors.blueAccent,
//          onPressed: () {
//            Navigator.pushNamed(context, '/view');
//          },
//        ),
//        RaisedButton(
//
//        ),
//      ],
//      /// TODO: Create add button that adds to the fridge, using another page
//    ),
//    Text(
//      'To be added: Shopping List',
//      style: optionStyle,
//    ),
//    Text(
//      'To be added: Recipes',
//      style: optionStyle,
//    ),
//    Text(
//      'To be added: Barcode Scan',
//      style: optionStyle,
//    )
//  ];
  /// Moved inside build function to allow further accessibility by bypassing  "Only static members can be accessed in initializers" error caused by the context in which the list was created

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  void initState() {
    getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: <Widget>[
          Column(
//            children: <Widget>[
//              RaisedButton(
//                child: Text("View Fridge"),
//                color: Colors.blueAccent,
//                onPressed: () {
//                  Navigator.pushNamed(context, '/view');
//                },
//              ),
//              RaisedButton(
//
//              ),
//            ],
            children: categories.keys.map((key) {
              return ExpansionTile(
                title: Text(key),
                children: categories[key].map((ingredient) {
                  return ListTile(
                    title: Text(ingredient),
                    trailing:Text(count[ingredient].toString(), textScaleFactor: .75,),
                  );
                }).toList(),
              );
            }).toList(),
            /// TODO: Create add button that adds to the fridge, using another page
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
        ].elementAt(_selectedIndex),
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
