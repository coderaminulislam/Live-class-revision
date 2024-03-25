import 'package:app1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Buttons( Elevate Button, Icon Button, Text Button, GetureDetector, Inkwell) | Textfield | Container | Form
class ClassFour extends StatelessWidget {
  const ClassFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent.shade100,
        appBar: AppBar(
          title: Text('Home'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.blue,
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                    side: BorderSide(color: Colors.white, width: 2),
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    print('Tap on button');
                  },
                  child: Text('Hold On')),
              IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.add_a_photo)),
              TextButton(
                  style: TextButton.styleFrom(
                      textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    letterSpacing: 1,
                  )),
                  onPressed: () {},
                  child: Text(
                    'Click Here',
                    style: TextStyle(color: Colors.red),
                  )),
              GestureDetector(
                onTap: () {
                  print('On Tap');
                },
                onDoubleTap: () {
                  print('on Double tap');
                },
                onLongPress: () {
                  print('long Press');
                },
                onTapDown: (details) {
                  print('Tap Down');
                },
                child: Text(
                  'GestureDetector',
                  style: TextStyle(
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  print('On tap Now');
                },
                splashColor: Colors.red,
                borderRadius: BorderRadius.circular(5),
                child: Icon(Icons.abc_rounded),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  maxLength: 10,
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                    // label: Text('Email'),

                    labelText: 'Email',
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.orange,
                      fontSize: 16,
                      letterSpacing: 6,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.orange),
                        borderRadius: BorderRadius.circular(16)),

                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: Colors.orange),
                        borderRadius: BorderRadius.circular(16)),
                    hintText: 'Enter your Email',
                    suffixIcon: Icon(
                      Icons.arrow_right_alt,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Image.asset('images/aminul.jpg'),
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    ),
                    Container(
                     // child: Image.asset('images/aminul.jpg', fit: BoxFit.cover, ),


                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        shape: BoxShape.rectangle,

                        color: Colors.white,
                      ),
                      width: 100,
                      height: 100,

                    ),
                    Container(
                      child: Image.asset('images/aminul.jpg'),
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
