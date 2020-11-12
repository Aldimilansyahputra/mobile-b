import 'package:donakko/constant.dart';
import 'package:flutter/material.dart';
import 'package:donakko/beranda/beranda_donakko_appbar.dart';

class BerandaPage extends StatefulWidget {
  @override
  _BerandaPageState createState() => new _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      appBar: DonakkoAppBar(),
      backgroundColor: DonakkoPalette.grey200,
      body: Container(child: ListView(
        physics: ClampingScrollPhysics(),
        children: <Widget>[
          Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  _buildDonakkoMenu(),
                ],
              )),
        ],
      ),
      ),
    )
    );
  }

  Widget _buildDonakkoMenu() {
    return Container(
        height: 120.0,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
            ),
            borderRadius: BorderRadius.all(Radius.circular(3.0))),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [const Color(0xff3164bd), const Color(0xff295cb5)],
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(3.0),
                      topRight: Radius.circular(3.0))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Donasi",
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontFamily: "NeoSansBold"),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 32.0, right: 32.0, top: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/icon_menu.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Transfer",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/icon_menu.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Icon",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/icon_menu.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Icon",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/icon_menu.png",
                        width: 32.0,
                        height: 32.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Icon",
                        style: TextStyle(color: Colors.white, fontSize: 12.0),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }

}