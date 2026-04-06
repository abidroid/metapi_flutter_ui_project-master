
import 'package:flutter/material.dart';
import 'package:metapi_flutter_ui_project/datastore/data.dart';

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({super.key});

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Quotes'),
      ),
      body: Center(
        child: Column(
          spacing: 80,
          mainAxisAlignment: .center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  color: Colors.amber[100],
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(quotesList[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),),
              )),
            ),
            ElevatedButton(onPressed: (){
              setState(() {

                if( index == 4) {
                  index = 0;
                  print('if block');
                }else{
                  index++;
                  print('Else block ');
                }

              });
            }, child: Text('NEXT -> $index'))
          ],
        ),
      ),
    );
  }
}
