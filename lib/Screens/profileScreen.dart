import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: Center(
          child: TextButton(
        child: Text("back to home"),
        onPressed: () {
          //navigate
          Navigator.of(context).pop();
        },
      )),
    );
  }
}
