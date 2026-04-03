
import 'package:flutter/material.dart';

class GridviewDemoScreen extends StatelessWidget {
  const GridviewDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('GridView Demo'),
      ),

      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),

          children: [

            GridTile(child: Text('GridTile'),

              header: CircleAvatar(radius: 50,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/17814795?v=4'),
              ),
              footer: Text('Rs 500'),
            ),
            Container(color: Colors.cyan,),
            Container(color: Colors.red,),
            Container(color: Colors.green,),
            Container(color: Colors.black,),
            Container(color: Colors.orange,),
            FlutterLogo(),
            Container(color: Colors.grey,),
            Container(color: Colors.brown,),
            Container(color: Colors.yellow,),
            CircleAvatar(),
            Container(color: Colors.teal,),
            Container(color: Colors.cyan,),
            Container(color: Colors.red,),
            Container(color: Colors.green,),
            Text('Abid'),
            Container(color: Colors.black,),
            Container(color: Colors.orange,),
            Container(color: Colors.grey,),
            Container(color: Colors.brown,),
            Container(color: Colors.yellow,),
            Container(color: Colors.teal,),
            Container(color: Colors.cyan,),
            Container(color: Colors.red,),
            Container(color: Colors.green,),
            Container(color: Colors.black,),
            Container(color: Colors.orange,),
            Container(color: Colors.grey,),
            Container(color: Colors.brown,),
            Container(color: Colors.yellow,),
            Container(color: Colors.teal,),
          ],
      ),
    );
  }
}
