import 'package:flutter/material.dart';

class GestureDetectorPage extends StatefulWidget {
  static const String id = "gesture";

  const GestureDetectorPage({Key? key}) : super(key: key);

  @override
  State<GestureDetectorPage> createState() => _GestureDetectorPageState();
}

class _GestureDetectorPageState extends State<GestureDetectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Gesture detector"),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            print("SAPUDGPAIWBDIPAYBF");
          },
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://thumbs.dreamstime.com/b/nice-to-talk-smart-person-indoor-shot-attractive-interesting-caucasian-guy-smiling-broadly-nice-to-112345489.jpg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
