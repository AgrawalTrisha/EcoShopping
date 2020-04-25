import 'package:flutter/material.dart';


class FridgeForm extends StatelessWidget {

  final Function add;

  const FridgeForm({Key key, this.add}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class FridgeForm1 extends StatefulWidget {
  @override
  _FridgeForm1State createState() => _FridgeForm1State();
}

class _FridgeForm1State extends State<FridgeForm1> {
  final controller = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Add new item'),
        backgroundColor: Colors.green[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: controller,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {},
        child: Icon(Icons.text_fields),
      ),
    );
  }
}
