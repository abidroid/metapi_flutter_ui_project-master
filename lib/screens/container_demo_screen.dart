import 'package:flutter/material.dart';

class ContainerDemoScreen extends StatelessWidget {
  const ContainerDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Container Demo'),
      ),

      body: Container(
        // inside the container
        padding: EdgeInsets.only(left: 30, top: 20),

        // outside the container
        margin: EdgeInsets.only(left: 50, top: 60),
        width: 300,
        height: 300,

        decoration: BoxDecoration(
          //shape: BoxShape.circle,
          //borderRadius: BorderRadius.circular(100),

          // border: Border.all(color: Colors.blue, width: 15),

          // gradient: LinearGradient(
          //   colors: [Colors.pink,
          //     Colors.purple, Colors.cyan],
          //
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight
          // ),
          gradient: RadialGradient(
            center: Alignment.topRight,
            colors: [Colors.orange, Colors.green, Colors.red],
          ),

          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(-5, -5),
              spreadRadius: 5,
              blurRadius: 4,
            ),

            BoxShadow(
              color: Colors.purple,
              offset: Offset(10, 5),
              spreadRadius: 5,
              blurRadius: 4,
            ),
          ],
        ),

        // child: Text(
        //   'Sun',
        //   style: TextStyle(
        //     fontSize: 30,
        //     color: Colors.white,
        //     backgroundColor: Colors.green,
        //
        //   ),
        // ),
        child: UnconstrainedBox(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.teal,
            alignment: Alignment.topRight,
            child: UnconstrainedBox(child: Container(width: 100, height: 100, color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
