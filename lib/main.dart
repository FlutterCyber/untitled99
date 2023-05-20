import 'package:flutter/material.dart';
import 'package:untitled99/container_decoration.dart';
import 'package:untitled99/gesture_detector_page.dart';
import 'package:untitled99/home_page.dart';
import 'package:untitled99/home_page2.dart';
import 'package:untitled99/text_field_page.dart';
import 'package:untitled99/text_field_page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id:(context)=>const HomePage(),
        HomePage2.id:(context)=>const HomePage2(),
        ContainerDecorationPage.id:(context)=>const ContainerDecorationPage(),
        GestureDetectorPage.id:(context)=>const GestureDetectorPage(),
        TextFieldPage.id:(context)=>const TextFieldPage(),
        TextFieldPage2.id:(context)=>const TextFieldPage2(),
      },
    );
  }
}

