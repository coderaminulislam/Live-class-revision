import 'package:flutter/material.dart';
import 'package:app1/screen/home.dart';
import 'package:app1/screen/profile.dart';

class Settings extends StatelessWidget {
  const Settings({super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      backgroundColor: Colors.blue.shade50,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> Home()), (route) => false,);
                },
                child: Text('Back To Home')),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile(userName: 'Tonmoy',)));
                },
                child: Text('Go To Previous'))
          ],
        ),
      ),
    );
  }
}
