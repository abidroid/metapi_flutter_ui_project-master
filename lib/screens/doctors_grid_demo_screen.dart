
import 'package:flutter/material.dart';
import 'package:metapi_flutter_ui_project/datastore/data.dart';

import '../models/doctor.dart';
import '../widgets/general_widgets.dart';

class DoctorsGridDemoScreen extends StatelessWidget {
  const DoctorsGridDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: doctorsList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2
            ),
            itemBuilder: (BuildContext context, int index){
              Doctor doctor = doctorsList[index];

              return Card(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: .center,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadiusGeometry.circular(20),
                            child: Image.network(doctor.photo, width: 100, height: 100,)),
                    
                        Text(doctor.name,style: txtStyle,),
                        Text(doctor.spe, style:  txtStyle,),

                      ],
                    ),
                  ),
                ),

              );
            }),
      ),
    );
  }
}
