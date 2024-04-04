import 'package:app1/class/class_5.dart';
import 'package:flutter/material.dart';
import 'package:app1/screen/home.dart';

// import 'class/class_3.dart';
import 'class/Statefullwidget.dart';
import 'class/class_4.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


