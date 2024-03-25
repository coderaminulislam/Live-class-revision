
import 'package:flutter/material.dart';

import 'class/class_3.dart';
import 'class/class_4.dart';

void main(){
  runApp(const App());
}

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ClassFour(),
    );
  }
  
}

