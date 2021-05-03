import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:web_scraper/web_scraper.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final webScraper = WebScraper('http://www.tau.edu.tr');

  List<dynamic> news_content = [];

  List<dynamic> news_nums = [];

  static const PrimaryColor = const Color.fromRGBO(25, 157, 178, 50);

  void getnews() {
    webScraper.loadWebPage('').then((res) {
      //  print(res.toString()) ;

      List<Map<String, dynamic>> elements = webScraper.getElement(
          'section#home-announcements div.content div.summary', ['']);
      List<Map<String, dynamic>> elements_nums = webScraper
          .getElement('section#home-announcements div.content div.date', ['']);

      news_content = elements;
      news_nums = elements_nums;

      setState(() {});
      print(news_content);
    });
  }

  @override
  void initState() {
    super.initState();
    // Requesting to fetch before UI drawing starts
    getnews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("TAU"),
        backgroundColor: PrimaryColor,
      ),
      body: Column(children: [
        Container(
          decoration: BoxDecoration(
              color: PrimaryColor,
              border: Border.all(color: Colors.white, width: 0.7)),
          padding: EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topLeft,
            // Align however you like (i.e .centerRight, centerLeft)
            child: Text("Duyurular",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontFamily: 'MetaPro-Norm')),
          ),
        ), //duyurular
        SizedBox(
            height: 200.0,
            child: Carousel(
              images: [
                Container(
                    color: Colors.white24,
                    child: Stack(
                      children: [
                        Container(
                          width: 100.0,
                          height: 300.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/s.jpg'),
                              )),
                        ),
                        Positioned(
                            top: 60,
                            left: 50,
                            child: Text(
                                news_nums[0]['title']
                                    .toString()
                                    .trimLeft()
                                    .replaceAll(new RegExp(r"\s+"), "\n\n"),
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                        Positioned(
                          top: 40,
                          left: 115,
                          right: 30,
                          child: Text(
                            news_content[0]['title'].toString().trimLeft(),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'MetaPro-Norm',
                              color: Colors.black54,
                            ),
                          ),
                        )
                      ],
                      overflow: Overflow.visible,
                    )),
                Container(
                    color: Colors.white24,
                    child: Stack(
                      children: [
                        Container(
                          width: 100.0,
                          height: 300.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/s.jpg'),
                              )),
                        ),
                        Positioned(
                            top: 60,
                            left: 50,
                            child: Text(
                                news_nums[1]['title']
                                    .toString()
                                    .trimLeft()
                                    .replaceAll(new RegExp(r"\s+"), "\n\n"),
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                        Positioned(
                          top: 40,
                          left: 115,
                          right: 30,
                          child: Text(
                            news_content[1]['title'].toString().trimLeft(),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'MetaPro-Norm',
                              color: Colors.black54,
                            ),
                          ),
                        )
                      ],
                      overflow: Overflow.visible,
                    )),
                Container(
                    color: Colors.white24,
                    child: Stack(
                      children: [
                        Container(
                          width: 100.0,
                          height: 300.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/s.jpg'),
                              )),
                        ),
                        Positioned(
                            top: 60,
                            left: 50,
                            child: Text(
                                news_nums[2]['title']
                                    .toString()
                                    .trimLeft()
                                    .replaceAll(new RegExp(r"\s+"), "\n\n"),
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                        Positioned(
                          top: 40,
                          left: 115,
                          right: 30,
                          child: Text(
                            news_content[2]['title'].toString().trimLeft(),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'MetaPro-Norm',
                              color: Colors.black54,
                            ),
                          ),
                        )
                      ],
                      overflow: Overflow.visible,
                    )),
                Container(
                    color: Colors.white24,
                    child: Stack(
                      children: [
                        Container(
                          width: 100.0,
                          height: 300.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/s.jpg'),
                              )),
                        ),
                        Positioned(
                            top: 60,
                            left: 50,
                            child: Text(
                                news_nums[3]['title']
                                    .toString()
                                    .trimLeft()
                                    .replaceAll(new RegExp(r"\s+"), "\n\n"),
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                        Positioned(
                          top: 40,
                          left: 115,
                          right: 30,
                          child: Text(
                            news_content[3]['title'].toString().trimLeft(),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontFamily: 'MetaPro-Norm',
                              color: Colors.black54,
                            ),
                          ),
                        )
                      ],
                      overflow: Overflow.visible,
                    )),
              ],
              dotSize: 4.0,
              dotSpacing: 15.0,
              dotBgColor: Colors.white24.withOpacity(0.0),
              indicatorBgPadding: 0,
            )),
        SizedBox(
          height: 200.0,
          child: Carousel(
            images: [
              Container(
                  color: Colors.white24,
                  child: Stack(
                    children: [
                      Container(
                        width: 100.0,
                        height: 300.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/d.jpg'),
                            )),
                      ),
                      Positioned(
                          top: 60,
                          left: 50,
                          child: Text(
                              news_nums[4]['title']
                                  .toString()
                                  .trimLeft()
                                  .replaceAll(new RegExp(r"\s+"), "\n\n"),
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold))),
                      Positioned(
                        top: 40,
                        left: 115,
                        right: 30,
                        child: Text(
                          news_content[4]['title'].toString().trimLeft(),
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'MetaPro-Norm',
                            color: Colors.black54,
                          ),
                        ),
                      )
                    ],
                    overflow: Overflow.visible,
                  ))
            ],
            dotSize: 4.0,
            dotSpacing: 15.0,
            indicatorBgPadding: 5.0,
            dotBgColor: Colors.white24.withOpacity(0.0),
          ),
        ),
        Material(
            child: InkWell(
              onTap: () {},
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset('assets/block_37.png',
                      width: 110.0,
                      height: 110.0
                  ),
                ),
              ),
            ))
      ]),
      backgroundColor: Color(0xFFF7F7F7),
    );
  }
}
