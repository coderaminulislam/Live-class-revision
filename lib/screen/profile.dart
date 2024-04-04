import 'package:flutter/material.dart';
import 'package:app1/screen/settings.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, required this.userName});
 final String userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      backgroundColor: Colors.green.shade50,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text(userName),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back To Home')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Settings()));
                },
                child: Text('Go To Settings'))
          ],
        ),
      ),
    );
  }
}
