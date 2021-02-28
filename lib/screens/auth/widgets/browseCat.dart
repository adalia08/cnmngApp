import 'package:cnmngroup/screens/auth/widgets/article.dart';
import 'package:cnmngroup/services/pull.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';

class BrowseCat extends StatefulWidget {
  String cat;
  BrowseCat({Key key, @required this.cat}) : super(key: key);

  @override
  _BrowseCatState createState() => _BrowseCatState();
}

class _BrowseCatState extends State<BrowseCat> {
  List<Articley> art = new List<Articley>();
  List<Articley> sart = new List<Articley>();

  void jiggle(index) async {
    Articley instance = art[index];
    dynamic result = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => Article(user: sart[index])));
  }

  void update() async {
    Pull instance = Pull();
    await instance.getData();
    art = instance.bowser();
    sort();
    setState(() {});
    // Navigator.push(article, {
    //   'photo': instance.photo
    // });
  }

  @override
  void initState() {
    super.initState();
    update();

    //sort();
  }

  void sort() {
    String cata = widget.cat;
    for (int i = 0; i < art.length; i++) {
      print(art[i].cat);
      print(cata);
      if (art[i].cat == cata) {
        sart.add(art[i]);
      }
    }
    print(sart.length);
    print(cata);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemCount: sart.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 6.0),
            child: Container(
              child: Card(
                child: Column(
                  children: [
                    sart.length == 0
                        ? ListTile(
                            onTap: () {},
                            title: Text(
                                "No articles in this category yet! Come back sometime soon!"))
                        : ListTile(
                            onTap: () {
                              jiggle(index);
                            },
                            title: Text(
                              sart[index].title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                    sart[index].im1 != '  '
                        ? Image.network(sart[index].im1)
                        : Image.network(
                            'https://cnmng.ca/wp-content/uploads/2021/02/Shieldlogo_cnmng-sm.jpg'),
                    Text(sart[index].author + ' ' + sart[index].date),
                    Text(sart[index].cat + ' ' + sart[index].lang),
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
