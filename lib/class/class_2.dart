
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text('WhatsApp', style: TextStyle(color: Colors.white),) ,
        actions: [
          IconButton(onPressed:() {}, icon: Icon(Icons.camera_alt), color: Colors.white,),
          IconButton(onPressed:() {}, icon: Icon(Icons.search), color: Colors.white,),
          IconButton(onPressed:() {}, icon: Icon(Icons.more_vert), color: Colors.white,)
        ],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: const Icon(Icons.add, color: Colors.white,),backgroundColor:Colors.pinkAccent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pinkAccent,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat,  ), label: 'Chat'),
          BottomNavigationBarItem(icon: Icon(Icons.update,), label: 'Updates'),
          BottomNavigationBarItem(icon: Icon(Icons.person_3_sharp,), label: 'Comminuties'),
          BottomNavigationBarItem(icon: Icon(Icons.call,), label: 'Calls'),

        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.pinkAccent,

        currentIndex: 2,



      ),
    );
  }

}