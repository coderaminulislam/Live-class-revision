import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      // aspect ratio
    /*  body: Column(
        children: [
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
          Expanded(
           flex: 2,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
          ),
          Expanded(
            flex: 2,
              child: Container(
            width: 100,
            height: 100,
            color: Colors.orange,
          ))
        ],
      ),*/
    );
  }
}
