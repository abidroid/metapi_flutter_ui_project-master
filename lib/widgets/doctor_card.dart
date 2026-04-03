

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/doctor.dart';
import 'general_widgets.dart';

class DoctorCard extends StatelessWidget {

  final Doctor doctor;

  const DoctorCard({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {


    return Card(
      color: Colors.pink,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          spacing: 20,
          children: [


            Expanded(
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(doctor.name,style: txtStyle,),
                  Text(doctor.spe, style:  txtStyle,),
                  Text('${doctor.fee}', style: txtStyle,),
                  Text( doctor.mobile == null ? 'NA' : '${doctor.mobile}', style:  txtStyle,),
                  Text( doctor.hospital ?? 'NA',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: txtStyle,),
                  Text( doctor.mobile ?? 'Not Available', style:  txtStyle,),

                ],
              ),
            ),

            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(12),
              // child: Image.network(doctor.photo, width: 100, height: 160,
              //   fit: BoxFit.cover,
              // ),

              child: CachedNetworkImage(imageUrl: doctor.photo, width: 160, height: 100,),
            ),
          ],
        ),
      ),
    );
  }
}
