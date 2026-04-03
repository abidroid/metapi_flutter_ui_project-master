import 'package:flutter/material.dart';
import 'package:metapi_flutter_ui_project/screens/column_demo_screen.dart';
import 'package:metapi_flutter_ui_project/screens/container_demo_screen.dart';
import 'package:metapi_flutter_ui_project/screens/doctors_grid_demo_screen.dart';
import 'package:metapi_flutter_ui_project/screens/doctors_list_screen.dart';
import 'package:metapi_flutter_ui_project/screens/dynamic_listview_demo_screen.dart';
import 'package:metapi_flutter_ui_project/screens/gridview_demo_screen.dart';
import 'package:metapi_flutter_ui_project/screens/home_screen.dart';
import 'package:metapi_flutter_ui_project/screens/image_demo_screen.dart';
import 'package:metapi_flutter_ui_project/screens/listview_demo_screen.dart';
import 'package:metapi_flutter_ui_project/screens/stack_demo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}

