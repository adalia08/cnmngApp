import 'package:cnmngroup/screens/auth/widgets/profile_body.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.lightGreen[400],
      ),
      body: Column(
        children: [
          Expanded(child: ProfileBody())
        ],
      ),
    );
  }
}
