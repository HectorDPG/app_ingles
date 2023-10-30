import 'package:flutter/material.dart';


class InglesAvanzado extends StatefulWidget {
  const InglesAvanzado({super.key});

  @override
  State<InglesAvanzado> createState() => _InglesAvanzadoState();
}

class _InglesAvanzadoState extends State<InglesAvanzado> {
  TextEditingController _textController = TextEditingController();
  String infoText = '';
  List<String> countryList = [
    'hola como estas',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text('Hello, how are you?'),
                  TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: 'Traduce',
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _validateUserInput(_textController.text);
                    },
                    child: Text('Check'),
                    
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    infoText,
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text('Hello, how are you?'),
                  TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: 'Traduce',
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _validateUserInput(_textController.text);
                    },
                    child: Text('Check'),
                    
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    infoText,
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Text('Hello, how are you?'),
                  TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: 'Traduce',
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _validateUserInput(_textController.text);
                    },
                    child: Text('Check'),
                    
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    infoText,
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  _validateUserInput(String input) {
    if (!countryList.contains(input.toLowerCase())) {
      setState(() {
        infoText = 'Incorrecto';
      });
    } else {
      setState(() {
        infoText = 'Correcto $input';
      });
    }
  }

}