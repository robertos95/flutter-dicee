import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftButtonNumber = 5;

    return Container(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice$leftButtonNumber.png'),
                onPressed: () {
                  print('Left button pressed');
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                child: Image.asset('images/dice1.png'),
                onPressed: () {
                  print('Right button pressed');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
