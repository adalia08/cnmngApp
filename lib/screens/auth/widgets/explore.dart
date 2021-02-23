import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:cnmngroup/services/pull.dart';
import 'package:cnmngroup/screens/auth/widgets/browseCat.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<String> catagories = [
    "EDITORIALS",
    "GASTRONOMY",
    "HEALTH & MEDICINE",
    "INTERVIEWS",
    "LAST MINUTE AND BREAKING NEWS",
    "COMMUNITY",
    "NEWS UPDATES",
    "OPINION",
    "PODCASTS",
    "POLITICS",
    "SHOW BIZ",
    "SPORT",
    "WEEK IN REVIEW"
  ];
  List<Articley> art = new List<Articley>();

  void jiggle(index) async {
    //   Articley instance = art[index];
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => BrowseCat(cat: catagories[index])));
    // }
  }

  void update() async {
    Pull instance = Pull();
    await instance.getData();
    art = instance.bowser();
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
    print('build state');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: Text('Explore'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: catagories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 6.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  jiggle(index);
                },
                title: Center(
                  child: Text(
                    catagories[index],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
