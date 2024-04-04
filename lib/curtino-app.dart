import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ioSApp());
}

class ioSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Home'),
          trailing: CupertinoButton.filled(
            child: Text(
              'click here',
              style: TextStyle(fontSize: 20),
            ),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            onPressed: () {},
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoActivityIndicator(
                  radius: 20.0, color: CupertinoColors.activeBlue),
              SizedBox(height: 20,),
              CupertinoSwitch(value: false, onChanged: (value){
                print('I am switch');
              })
            ],
          ),
        ));
  }
}
