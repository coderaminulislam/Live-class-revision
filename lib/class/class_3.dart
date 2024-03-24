//Scaffold | column | row | Dialog | Snackbar

import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade50,
      appBar: AppBar(
        title: Text('Home Screen', style: TextStyle(color: Colors.lightGreen, fontSize: 16),),
        leading: Icon(Icons.home, color: Colors.green,),

        actions: [
          IconButton(onPressed: (){
            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //     content: Text('Money has been send...'),
            //   backgroundColor: Colors.green,
            //
            // ));
            showDialog(context: context, builder: (context){
              return AlertDialog(
                title: Text('Send money'),
                content: Text('Are you sure to transfer this money?'),
                actions: [
                  IconButton(onPressed: (){

                  }, icon: Icon(Icons.check)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.close))

                ],
                backgroundColor: Colors.lightGreen.shade50,
                actionsAlignment: MainAxisAlignment.spaceBetween,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),

              );
            });
          }, icon: Icon(Icons.add))
        ],

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,

          children: [
            Text('Hi,'),
            Text('Aminul,'),
            Text('How,'),
            Text('Are,'),
            Text('you?,'),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.date_range),
                Text('Date')
              ],
            )
          ],


        ),
      ),

    );
  }

}