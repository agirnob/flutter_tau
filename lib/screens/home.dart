import 'dart:ui';

import 'package:flutter/material.dart';
import '../main.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    MyApp color = new MyApp();
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Duyurular",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.end,

            ),
          )
        ],
      ),
      alignment: Alignment.topCenter,
      color: color.createMaterialColor(Color(0xFF25B0D0)),
      width: MediaQuery.of(context).size.width,
      height: 96.0,
    );
  }

  String sayHello() {
    String sayThis;
    DateTime now = new DateTime.now();
    int saat = now.hour;
    if (saat <= 12) {
      sayThis = "GUten Morgen herr son of biscuit";
    } else if (saat <= 18) {
      sayThis = "GUten Tag herr son of biscuit";
    } else {
      sayThis = "go to  fucking sleep herr son of biscuit";
    }
    return sayThis;
  }
}
