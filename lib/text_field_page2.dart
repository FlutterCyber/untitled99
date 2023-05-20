import 'package:flutter/material.dart';

class TextFieldPage2 extends StatefulWidget {
  static const String id = "tfp2";

  const TextFieldPage2({Key? key}) : super(key: key);

  @override
  State<TextFieldPage2> createState() => _TextFieldPage2State();
}

class _TextFieldPage2State extends State<TextFieldPage2> {
  final _formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";

  _doSignIn() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print("WELCOME");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                validator: (value) =>
                    !value!.contains("@") ? "Please enter a valid email" : null,
                onSaved: (value) => _email = value!,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                validator: (value) => value!.length < 6
                    ? "Eng kamida 6 ta belgi bo'lishi shart"
                    : null,
                onSaved: (value) => _password = value!,
                decoration: InputDecoration(
                  labelText: "Password",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _doSignIn();
              },
              child: Text("Sign In"),
            ),
          ],
        ),
      ),
    );
  }
}
