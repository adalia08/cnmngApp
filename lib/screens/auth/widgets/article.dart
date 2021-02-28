import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cnmngroup/screens/auth/widgets/browse.dart';
import 'package:cnmngroup/services/pull.dart';

class Article extends StatelessWidget {
  final Articley user;

  Article({Key key, @required this.user}) : super(key: key);

//Article data;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.

    //   data = data != null ? data : ModalRoute.of(context).settings.arguments;

    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.grey[600],
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(30.0),
      //   child: AppBar(
      //     backgroundColor: Colors.grey[600],
      //     elevation: 0,
      //
      //     leading: IconButton(
      //       icon: Icon(Icons.arrow_back),
      //       onPressed: (){
      //         Navigator.push(context,
      //             MaterialPageRoute(builder: (context) => Browse()));
      //       },
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 6.0),
              child: Text(user.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left),
            ),
            Text(
              user.author + ' ' + user.date,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Image.network(user.im1),
            user.im2 != '  ' ? Image.network(user.im2) : Image.network(""),
            user.im3 != '  ' ? Image.network(user.im3) : Image.network(""),
            user.im4 != '  ' ? Image.network(user.im4) : Image.network(""),
            user.im5 != '  ' ? Image.network(user.im5) : Image.network(""),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(
                    color: Colors.grey[100],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    user.content,
                    style: TextStyle(
                      height: 1.75,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
