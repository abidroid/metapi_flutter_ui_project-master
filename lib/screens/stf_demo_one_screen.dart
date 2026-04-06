

import 'package:flutter/material.dart';

class StfDemoOneScreen extends StatefulWidget {
  const StfDemoOneScreen({super.key});

  @override
  State<StfDemoOneScreen> createState() => _StfDemoOneScreenState();
}

class _StfDemoOneScreenState extends State<StfDemoOneScreen> {

  // state variable
  // initial state
  String message = "Hello Peshawar";

  @override
  Widget build(BuildContext context) {

    print('Build called');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Sft Demo 1'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(message), // hard coded
            ElevatedButton(
                onPressed: (){

                  setState(() {
                    message = "Flutter is Fun";
                  });

            }, child: Text('Change')),
          ],
        ),
      ),
    );
  }
}
