
import 'package:flutter/material.dart';

class CombineNamesDemoScreen extends StatefulWidget {
  const CombineNamesDemoScreen({super.key});

  @override
  State<CombineNamesDemoScreen> createState() => _CombineNamesDemoScreenState();
}

class _CombineNamesDemoScreenState extends State<CombineNamesDemoScreen> {


  String fullName = "FN";
  // type inference
  var firstController = TextEditingController();
  var lastController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Combine Names'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(

          children: [
            TextField(
              controller: firstController,
              decoration: InputDecoration(
                hintText: 'First Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 16,),
            TextField(
              controller: lastController,
              decoration: InputDecoration(
                hintText: 'Last Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 16,),

            Row(
              spacing: 16,
              children: [
                Expanded(child: ElevatedButton(onPressed: (){

                  firstController.clear();
                  lastController.clear();

                  setState(() {
                    fullName = '';

                  });

                }, child: Text('Clear'))),
                Expanded(child: ElevatedButton(onPressed: (){

                  String firstName = firstController.text.trim();

                  String lastName = lastController.text.trim();

                  setState(() {
                    fullName = '$firstName $lastName';
                  });


                }, child: Text('Combine'))),
              ],
            ),
            SizedBox(height: 16,),

            Text(fullName),
            
          ],
        ),
      ),
    );
  }
}
