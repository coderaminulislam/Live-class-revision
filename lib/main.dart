import 'package:app1/class/class_5.dart';
import 'package:flutter/material.dart';
import 'package:app1/screen/home.dart';

// import 'class/class_3.dart';
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
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        )
       )
      )
    ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60)
                ),
                backgroundColor: Colors.red,
              ),

                onPressed: () {},
                child: Text('Tap to Edit')),
            ElevatedButton(

                onPressed: () {},
                child: Text('Tap to Edit')),
            ElevatedButton(

                onPressed: () {},
                child: Text('Tap to Edit')),
            TextButton(onPressed: () {}, child: Text('Text Button')),
          ],
        ),
      ),
    );
  }
}

// style create
class ButtonStyles {
  static ButtonStyle style = ElevatedButton.styleFrom(
    backgroundColor: Colors.red,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6),
    ),
  );
}
