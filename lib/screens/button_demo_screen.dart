
import 'package:flutter/material.dart';

class ButtonDemoScreen extends StatelessWidget {
  const ButtonDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Buttons'),
      ),

      body: Column(
        children: [
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),

                  onPressed: (){

              }, child: Text('LOGIN')),
            ),
          
          OutlinedButton(onPressed: (){
            
          }, child: Text('REGISTER')),
          
          TextButton(onPressed: (){
            
          }, child: Text('Rate Us')),
          
          IconButton(onPressed: (){

          }, icon: Icon(Icons.search)),


          InkWell(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Material(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.pink, Colors.purple]),
                  borderRadius: BorderRadius.circular(24)
                ),
                child: Text('Subscribe our channel', style: TextStyle(fontSize: 20, color: Colors.white),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
