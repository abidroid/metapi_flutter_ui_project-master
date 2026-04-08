
import 'package:flutter/material.dart';

class SwitchDemoScreen extends StatefulWidget {
  const SwitchDemoScreen({super.key});

  @override
  State<SwitchDemoScreen> createState() => _SwitchDemoScreenState();
}

class _SwitchDemoScreenState extends State<SwitchDemoScreen> {

  bool switchState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: switchState ? Colors.black : Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [

            Icon(Icons.lightbulb, size: 200, color: switchState ? Colors.yellow :  Colors.black,),

            Switch(value: switchState, onChanged: (bool newValue){

              setState(() {
                switchState = newValue;
              });
            })
          ],
        ),
      ),
    );
  }
}
