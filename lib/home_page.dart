import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:untitled99/home_page2.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Bottom NavBar"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey,
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, HomePage2.id);
              },
              child: Text(
                "Next Page",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ))),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 60.0,
        key: _bottomNavigationKey,
        items: const [
          Icon(Icons.home, size: 30),
          Icon(Icons.search, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.video_call, size: 30),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        backgroundColor: Colors.green,
        animationDuration: Duration(milliseconds: 300),
        onTap: (int index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}
