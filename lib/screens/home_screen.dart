
import 'package:flutter/material.dart';
import 'package:metapi_flutter_ui_project/screens/column_demo_screen.dart';
import 'package:metapi_flutter_ui_project/screens/container_demo_screen.dart';
import 'package:metapi_flutter_ui_project/screens/doctors_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('MetaPi'),
      ),

      body: ListView(
        children: [
          Card(
            color: Colors.amber[100],
            child: ListTile(
              leading: CircleAvatar(
                child: Text('1'),
              ),
            
              title: Text('Container'),
              trailing: Icon(Icons.arrow_forward_ios_rounded, size: 16,),
              onTap: (){

                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context){
                    return ContainerDemoScreen();
                  })
                );
              },
            ),
          ),

          Card(
            color: Colors.amber[100],
            child: ListTile(
              leading: CircleAvatar(
                child: Text('2'),
              ),

              title: Text('Column'),
              trailing: Icon(Icons.arrow_forward_ios_rounded, size: 16,),
              onTap: (){

                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context){
                    return ColumnDemoScreen();
                  })
                );

              },
            ),
          ),

          Card(
            color: Colors.amber[100],
            child: ListTile(
              leading: CircleAvatar(
                child: Text('3'),
              ),

              title: Text('Doctor List'),
              trailing: Icon(Icons.arrow_forward_ios_rounded, size: 16,),
              onTap: (){

                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context){
                      return DoctorsListScreen();
                    })
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
