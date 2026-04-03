import 'package:flutter/material.dart';

class ImageDemoScreen extends StatelessWidget {
  const ImageDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text('Images Demo')),
      body: SingleChildScrollView(
        child: Column(
          children: [

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
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('images/icons/rendara.png', width: 100, height: 100,)),

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

            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('images/abid.png', width: 200, height: 200,)),
          ],
        ),
      ),
    );
  }
}
