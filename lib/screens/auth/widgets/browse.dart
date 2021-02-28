import 'package:cnmngroup/screens/auth/widgets/article.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';

import 'package:cnmngroup/services/pull.dart';

class Browse extends StatefulWidget {
  @override
  _BrowseState createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  List<Articley> art = new List<Articley>();

  void jiggle(index) async {
    Articley instance = art[index];
    dynamic result = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => Article(user: art[index])));
  }

  void update() async {
    Pull instance = Pull();
    await instance.getData();
    art = instance.bowser();
    setState(() {});
    // Navigator.push(article, {
    //   'photo': instance.photo
    // });
  }

  @override
  void initState() {
    super.initState();
    update();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[400],
        title: Text('News Feed'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: art.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 6.0),
            child: Container(
              child: Card(
                elevation: 0,
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {
                        jiggle(index);
                      },
                      title: Text(
                        art[index].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    art[index].im1 != '  '
                        ? Image.network(art[index].im1)
                        : ResizeImage(
                            NetworkImage(
                                'https://cnmng.ca/wp-content/uploads/2021/02/Shieldlogo_cnmng-sm.jpg',
                                scale: 0.5),
                            height: 14,
                            width: 13),
                    Text(art[index].author + ' ' + art[index].date),
                    Text(art[index].cat + ' ' + art[index].lang),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
