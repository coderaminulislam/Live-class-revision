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
    // print(MediaQuery.of(context).orientation);
    // print(MediaQuery.of(context).size);
    // print(MediaQuery.of(context).size.width);
    // print(MediaQuery.of(context).devicePixelRatio);
    // print(MediaQuery.sizeOf(context));
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        title: Text('Home Screen'),
      ),
      // body: Center(
      //   child: Wrap(
      //     crossAxisAlignment: WrapCrossAlignment.center,
      //     alignment: WrapAlignment.center,
      //     children: [
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //       Text(MediaQuery.orientationOf(context).toString()),
      //     ],
      //   ),
      // ),
      // body: Center(
      //   child: LayoutBuilder(
      //    builder: (context, constraints) {
      //      if(constraints.maxWidth < 420){
      //        return Text('Mobile');
      //      } else if(constraints.maxWidth< 767){
      //        return Text('large Mobile');
      //      } else if( constraints.maxWidth < 991){
      //        return Text('Tablet');
      //      } else if( constraints.maxWidth < 1922){
      //        return Text('Desktop');
      //
      //      }  else{
      //        return Text(' Unknown screen');
      //      }
      //    },
      //   ),
      // ),

      body: Center(
        child: OrientationBuilder(
          builder: (context, orientation){
            if( orientation == Orientation.landscape){
              return Container(
                color: Colors.red,
                height: 300,
              );
            } else{
              return Container(
                color: Colors.green,
                height: 300,
              );
            }
          },
        ),
      ),
    );
  }
}