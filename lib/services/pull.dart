import 'package:http/http.dart';
import 'dart:convert';

class Articley {
  String title;
  String author;
  String date;
  String content;
  String cat;
  String lang;
  String im1;
  String im2;
  String im3;
  String im4;
  String im5;
  String video;

  Articley(this.title, this.author, this.date, this.content, this.cat,
      this.lang, this.im1, this.im2, this.im3, this.im4, this.im5, this.video);
}

class Pull {
  // String title; // location for UI
  // String intro;
  // String content; // temp in the location

  String res; //location url for api endpoint
  int x;
  List<Articley> browser = new List<Articley>();

  Pull();

  Future<void> getData() async {
    try {
      Response response1 = await get('https://cnmng.ca/get-articles.php');
      res = response1.body;

      //String beep = response1.body.toString();
      print(res.split('split').length);
      List<String> test = res.split('split');
      print(test[1148]);
      x = int.parse(test[0]);
      int mult = 0;

      while (x >= 0) {
        String temp = test[0 + (14 * mult)];

        String title = test[1 + (14 * mult)];
        print('title' + title);
        String author = test[2 + (14 * mult)];
        print('author' + author);
        String date = test[3 + (14 * mult)];
        print('date' + date);
        String content = test[4 + (14 * mult)];
        print('content' + content);
        String cat = test[5 + (14 * mult)].trim();
        print('catagory' + cat);
        String lang = test[6 + (14 * mult)].trim();
        print('language' + lang);
        String im1 = test[7 + (14 * mult)].trim();
        print('im1' + im1);
        String im2 = test[8 + (14 * mult)].trim();
        print('im2' + im2);
        String im3 = test[9 + (14 * mult)].trim();
        print('im3' + im3);
        String im4 = test[10 + (14 * mult)].trim();
        print('im4' + im4);
        String im5 = test[11 + (14 * mult)].trim();
        print('im5' + im5);
        String video = test[12 + (14 * mult)].trim();
        print('video' + video);
        Articley a = new Articley(title, author, date, content, cat, lang, im1,
            im2, im3, im4, im5, video);
        browser.add(a);

        mult++;
        x--;
      }
      print(browser.length);

// null == '  '... two spaces

      //   Map celc = data['main'];
      //   temp = celc['temp'].toString();
      //
      //
      //   List top = data['weather'];
      //   String ad = top[0].toString();
      //   List<String> be = ad.split(',');
      //   String ne =be[1];
      //   List<String> boo = ne.split(' ');
      //   weather = boo[2];
      //
    } catch (e) {
      print('caught error $e');
      res = 'error';
      print(res);
      //   weather = 'error';
    }
  }

  List<Articley> bowser() {
    return browser;
  }
}
