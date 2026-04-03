
import 'package:flutter/material.dart';
import 'package:metapi_flutter_ui_project/widgets/doctor_card.dart';

import '../datastore/data.dart';
import '../models/doctor.dart';


// Widget
class DoctorsListScreen extends StatelessWidget {
  const DoctorsListScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Doctors List'),
      ),

      // dynamic data
      body: ListView.builder(
          itemCount: doctorsList.length,
          itemBuilder: ( BuildContext c,  int i){

            Doctor doctor  = doctorsList[i];

            return DoctorCard(doctor: doctor);
          }),
    );
  }
}


