import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class ContactInfo extends StatefulWidget {
  @override
  _ContactInfoState createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Contact Info')),
        body: Center(
            child: Text( "Contact Info \n website: cnmng.ca \n 287 BRIDGELAND AVE \n TORONTO, ONTARIO \n M6A 1Z6 \n 647-547-8211 \n info@cnmng.ca \n     ",
            textAlign: TextAlign.center,
            style: TextStyle(backgroundColor: Colors.white),

    )
        )
    );
  }
}
