

import 'package:flutter/material.dart';

class CounterDemoScreen extends StatefulWidget {
  const CounterDemoScreen({super.key});

  @override
  State<CounterDemoScreen> createState() => _CounterDemoScreenState();
}

class _CounterDemoScreenState extends State<CounterDemoScreen> {

  // state variable
  // initial state
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Counter"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: .spaceAround,
          children: [
            ElevatedButton(onPressed: (){
              setState(() {
                counter--;
              });
            }, child: Text("Dec")),
            Text(counter.toString(), style: TextStyle(fontSize: 30),),
            ElevatedButton(onPressed: (){
              setState(() {
                counter++;
              });
            }, child: Text("Inc")),
          ],
        ),
      ),
    );
  }
}
