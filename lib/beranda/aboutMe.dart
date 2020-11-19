import 'package:donakko/beranda/beranda_donakko_appbar.dart';
import 'package:flutter/material.dart';
import 'package:donakko/constant.dart';

class aboutMe extends StatefulWidget {
  @override
  _aboutMeState createState() => _aboutMeState();
}
class _aboutMeState extends State<aboutMe> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: DonakkoPalette.red,
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 30.0),
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      _Tengah(BuildContext),
                    ],
                  )),
            ],
          ),
        ),

      ),
    );
  }
}


Widget _Tengah(BuildContext){
  return Scaffold(
    body: Column(
      children: <Widget>[
        Text(
          "One",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 40.0,
              color: Colors.blue,
              fontFamily: "Caveat",
              fontWeight: FontWeight.w700),
        ),
        Text(
          "Two",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 40.0,
              color: Colors.blue,
              fontFamily: "Caveat",
              fontWeight: FontWeight.w700),
        ),
      ],
    ),
  );
}