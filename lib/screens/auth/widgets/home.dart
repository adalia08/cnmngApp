import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;

    print(data);
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0, 0),
          child: Column(
            children: <Widget>[
              FlatButton.icon(
                onPressed: () async {
                  dynamic result = await Navigator.pushNamed(context, '/browse');
                  setState(() {
                    data = {
                      'photo': result['photo'],
                    };
                  });
                },
                icon: Icon(Icons.edit_location),
                label: Text('edit location'),
              ),
              SizedBox(
                height: 20.0,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
