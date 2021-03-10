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
      body: Container (
        color: Colors.white,
        child : Column(
        children: <Widget>  [
          Expanded(child: ProfileBody()),
          //Text( "Contact Info \n website: cnmng.ca \n 287 BRIDGELAND AVE \n TORONTO, ONTARIO \n M6A 1Z6 \n 647-547-8211 \n info@cnmng.ca \n     ",
            //textAlign: TextAlign.center,
            //style: TextStyle(backgroundColor: Colors.white),

          //)
        ],
      ),
      ),
    );
  }
}
