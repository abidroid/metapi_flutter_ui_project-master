
import 'package:flutter/material.dart';

class InputDemoScreen extends StatefulWidget {
  const InputDemoScreen({super.key});

  @override
  State<InputDemoScreen> createState() => _InputDemoScreenState();
}

class _InputDemoScreenState extends State<InputDemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Input Demo'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 16,
          children: [
            TextField(
              decoration: InputDecoration(
                // hintText: 'Full Name',
                labelText: 'Pura Noom',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.eighteen_mp),
              ),
            ),
            TextField(
              keyboardType: TextInputType.phone,
              maxLength: 11,
              decoration: InputDecoration(
                hintText: 'Mobile Number',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.eighteen_mp),
              ),
            ),

            TextField(
              obscureText: true,
              obscuringCharacter: '#',
              decoration: InputDecoration(
                hintText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
