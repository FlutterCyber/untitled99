import 'package:flutter/material.dart';
import 'package:untitled99/text_field_page2.dart';

class TextFieldPage extends StatefulWidget {
  static const String id = "text_field";

  const TextFieldPage({Key? key}) : super(key: key);

  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  String name = "";
  String phoneNumber = "";
  String containerPhoneNumber = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Text Field"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, TextFieldPage2.id);
            },
            icon: Icon(Icons.arrow_forward),
          ),
        ],
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            ///for Name
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: "Phone",
                  hintStyle: TextStyle(color: Colors.blue),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.account_circle,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            /// for Phone number
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                onChanged: (value1) {
                  setState(() {
                    phoneNumber = value1;
                  });
                },
                keyboardType: TextInputType.number,
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: "Phone",
                  hintStyle: TextStyle(color: Colors.blue),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  containerPhoneNumber = phoneNumber;
                });
              },
              child: Text("Chiqar"),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.green,
              child: Center(
                child: Text(
                  name,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.green,
              child: Center(
                child: Text(
                  containerPhoneNumber,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
