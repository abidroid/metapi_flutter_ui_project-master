import 'package:flutter/material.dart';
import 'package:metapi_flutter_ui_project/models/doctor.dart';
import 'package:metapi_flutter_ui_project/widgets/doctor_card.dart';

class ColumnDemoScreen extends StatelessWidget {
  const ColumnDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal, title: Text('Column Demo')),
      body: Container(
        //height: 300,
        width: double.infinity,
        color: Colors.yellow,
        child: SingleChildScrollView(
          child: Column(
            // height is that of the parent container
            mainAxisAlignment: .start,
            children: [
              
              DoctorCard(doctor: Doctor(name: 'Abid', spe: 'ENT', fee: 2000, clinicAddress: 'PSH', photo: 'https://avatars.githubusercontent.com/u/17814795?v=4')),
              
              Container(color: Colors.blue, height: 100, width: double.infinity,
          
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 10,
                    children: [
          
                      Container(
          
                        width: 50, height: 50, decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle),),

                      VerticalDivider(color: Colors.black, thickness: 5,),


                      Container(
          
                        width: 50, height: 50, decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle),),
          
          
                      Container(
          
                        width: 50, height: 50, decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle),),
          
          
                      Container(
          
                        width: 50, height: 50, decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle),),
          
                      Container(
          
                        width: 50, height: 50, decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle),),
          
          
                      Container(
          
                        width: 50, height: 50, decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle),),
          
          
                      Container(
          
                        width: 50, height: 50, decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle),),
          
          
                      Container(
          
                        width: 50, height: 50, decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle),),
                    ],
                  ),
                ),
              ),
              Container(color: Colors.red, height: 150, width: 50,),
              Container(color: Colors.grey, height: 150, width: 50,),
              Divider(color: Colors.black, thickness: 5,),
              Container(color: Colors.brown, height: 150, width: 50,),
            ],
          ),
        ),
      ),
    );
  }
}
