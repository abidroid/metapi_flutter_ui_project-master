
import 'package:flutter/material.dart';

class DynamicListviewDemoScreen extends StatelessWidget {
  const DynamicListviewDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {


    // Hard coded
    List<String> friendList = [
      'Ali', 'Khan', 'Bilal', 'Fawad', 'Eisa', 'Jawad', 'Hannan',
      'Ali', 'Khan', 'Bilal', 'Fawad', 'Eisa', 'Jawad', 'Hannan',
      'Zia',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        leading: Icon(Icons.play_circle, size: 36,),
        title: Text('My Friends List', ),
        actions: [
          Icon(Icons.notification_add, size: 30,),
          SizedBox(width: 10,),

          CircleAvatar(
            backgroundImage: AssetImage('images/abid.png'),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: friendList.length,
          itemBuilder: (BuildContext context, int index){
            return Card(color: Colors.cyan,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(friendList[index], style: TextStyle(fontSize: 30),),
              ),
            );
          }),
    );
  }
}
