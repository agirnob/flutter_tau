import 'dart:ui';

import 'package:flutter/material.dart';
import '../Util.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //TODO buradaki column u layout ile düzeltmek
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Duyurular",
              style: TextStyle(color: Colors.white, fontSize: 35),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.end,
            ),
          ),
          //Ana sayfadaki yazı ve takvimin gözükmesi için
          Align(
            alignment: Alignment.centerLeft,
            child: Stack(
              children: <Widget>[
                new Image.asset(
                  'images/calendar-blank-line.png',
                  width: 100,
                  height: 100,
                ),
                Text(
                  sayHello(),
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ],
            ),
          )
        ],
      ),
      alignment: Alignment.topCenter,
      color: createMaterialColor(Color(0xFF25B0D0)),
      width: MediaQuery.of(context).size.width,
      height: 240.0,
    );
  }

  String sayHello() {
    String sayThis;
    if (DateTime.now().day < 10) {
      sayThis = "0" + DateTime.now().day.toString();
    } else {
      sayThis = DateTime.now().day.toString();
    }
    return sayThis;
  }
}
