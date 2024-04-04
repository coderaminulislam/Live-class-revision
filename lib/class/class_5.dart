// listview  | builder | Gridview | Seperate
import 'package:flutter/material.dart';

class ClassFive extends StatelessWidget {
  const ClassFive({super.key});



  @override
  Widget build(BuildContext context) {
    List<String> studentList = [
      'aminul',
      'abdul',
      'karim',
      'rahim'
    ];
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Home'),
      ),
     /* body: ListView.builder(
          itemCount: studentList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),

              child: Column(
                children: [
                  Text( studentList[index], style: TextStyle(fontSize: 18),),
                  Divider(
                    height: 15,
                    color: Colors.pink,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  )
                ],
              ),

            );
          }
      ), */
      /* body: ListView.separated(
          itemCount: studentList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text( studentList[index], style: TextStyle(fontSize: 18),),
                  Text( studentList[index], style: TextStyle(fontSize: 18),),

                ],
              ),

            );
          }, separatorBuilder: (BuildContext context, int index) {
            return Divider(
              height: 2,
              color: Colors.pink,
              thickness: 1,
              indent: 30,
              endIndent: 30,
            );
      },
      ), */
     /* body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4),
        children: [
          Text('1'),
          Text('2'),
          Text('3'),
          Text('4'),
          Text('5'),
          Text('6'),
          Text('7'),
      ), */
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: studentList.length ,
              itemBuilder: (context, index){
                return Column(
                  children: [
                    Text(studentList[index],
                      style: TextStyle(color: Colors.red, fontSize: 30),),
                    Divider(
                      height: 20,
                      color: Colors.white,
                      thickness: 1,
                    )
                  ],
                );
              },
            ),


            GridView.builder(
              shrinkWrap: true,
                 primary: false,
                 itemCount: 30,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 3,
                      mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index){
                    return Column(
                      children: [
                        Text('Roll - ${index+1}'),
                        // Text(studentList[index])
        
                      ],
                    );
                  }
                  ),
          ],
        ),
      ),
    );
  }
}
