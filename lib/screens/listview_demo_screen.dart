
import 'package:flutter/material.dart';

class ListviewDemoScreen extends StatelessWidget {
  const ListviewDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
          title: Text('ListView Demo')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [

            GestureDetector(
                onTap: (){},
                child: Text('submit', style: TextStyle(fontSize: 30),)),

            InkWell(
              onTap: (){},
              child: Card(
                color: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    spacing: 16,
                    children: [

                      CircleAvatar(),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text('Flutter Group', style: TextStyle(fontSize: 20),),
                            Text('Login into TLMS', style: TextStyle(fontSize: 16),)
                          ],
                        ),
                      ),
                      Text('5:40pm')
                    ],
                  ),
                ),
              ),
            ),

            Card(
              color: Colors.cyan,
              child: ListTile(
                leading: CircleAvatar(),
                title: Text('Flutter Group 2'),
                subtitle: Text('alsjldsjfldj'),
                trailing: Text('5:56pm'),
                onTap: (){},
              ),
            ),
            Icon(Icons.share, size: 50, color: Colors.orange,),

            Icon(Icons.settings, size: 50, color: Colors.green,),

            IconButton(onPressed: (){
              showDialog(context: context, builder: (context){

                return AlertDialog(
                  title: Text('Confirmation!!!'),
                  content: Row(
                    children: [
                      Text('Are you sure to logout ? '),
                      Icon(Icons.logout),
                    ],
                  ),
                  actions: [
                    TextButton(onPressed: (){}, child: Text('No')),
                    TextButton(onPressed: (){}, child: Text('Yes')),
                  ],
                );
              });
            }, icon: Icon(Icons.logout, size: 50,)),

            Image.asset('images/naseem.jfif', height: 200,
              alignment: Alignment.topCenter,

            ),
            SizedBox(
              width: 100,
              height: 100,
              child: ClipRRect(
                  clipBehavior: Clip.hardEdge, // Add this explicitly

                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('images/icons/rendara.png', width: 100, height: 100,)),
            ),

            Image.network(
              'https://avatars.githubusercontent.com/u/17814795?v=4',
              width: 200,
              height: 200,
            ),

            Image(
              image: NetworkImage(
                'https://avatars.githubusercontent.com/u/17814795?v=4',
              ),
              width: 150,
              height: 150,
            ),

            CircleAvatar(
              radius: 75,
              backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/17814795?v=4',
              ),
              child: Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt, size: 40, color: Colors.red,),
                ),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('images/abid.png', width: 200, height: 200,)),
            ),
          ],
        ),
      ),
    );
  }
}
