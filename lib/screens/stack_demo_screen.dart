import 'package:flutter/material.dart';

class StackDemoScreen extends StatelessWidget {
  const StackDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal, title: Text('Stack Demo')),

      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(width: 300, height: 300, color: Colors.red),
          Container(width: 200, height: 200, color: Colors.green),
          Container(width: 100, height: 100, color: Colors.blue),

          Positioned(
            bottom: -50,
            left: 100,

            child: Container(
                width: 100,
                height: 100,
                color: Colors.black,
               child: Column(
                 spacing: 10,
                 mainAxisAlignment: .center,
                 children: [
                   Row(
                     mainAxisAlignment: .spaceAround,
                     children: [
                       Container(width: 30, height: 20, color: Colors.white,),
                       Container(width: 30, height: 20, color: Colors.white,),
                     ],
                   ),
                   Container(width: 10, height: 30, color: Colors.white,),
                   Container(width: 80, height: 20, color: Colors.white,)
                 ],
               ),
            ),
          ),
        ],
      ),
    );
  }
}
