import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();

}

class _HomeScreen extends State<HomeScreen> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '$counter',
              style: TextStyle(fontSize: 90),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      counter--;
                      print(counter);
                      setState(() {

                      });
                    },
                    icon: Icon(Icons.remove)),
                SizedBox(width: 50,),
                IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      counter++;
                      print(counter);
                      setState(() {

                      });
                    },
                    icon: Icon(Icons.add)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// class StateFull extends StatefulWidget{
//   StateFull ({super.key});
//
//   @override
//  State<StateFull> createState()=> _stateFull();
// }
//
// class _stateFull extends State<StateFull>{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Hi, I am a statefull widget')
//           ],
//         ),
//       ),
//     );
//   }
//
// }
