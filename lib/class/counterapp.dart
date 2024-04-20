import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  CounterApp({super.key});

  @override

  State<CounterApp> createState() => _Counterapp();
}

class _Counterapp extends State<CounterApp> {
  int count = 0;
  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('Did Changes');
  }

  @override
  void didUpdateWidget(covariant CounterApp oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print('did update widget');
  }





  @override
  Widget build(BuildContext context) {
     print('build method');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('$count', style:  TextStyle(fontSize: 120, color: Color(
                0xff831e1e)),),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white
                  ),
                    onPressed: () {
                    count++;
                    print(count);
                    setState(() {

                    });
                    }, icon: const Icon(Icons.add)),
                IconButton(
                    style: IconButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white
                    ),
                    onPressed: () {
                      count--;
                      print(count);
                      setState(() {

                      });
                    }, icon: const Icon(Icons.remove))
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print('Deactive');
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('dispose');
  }
}
