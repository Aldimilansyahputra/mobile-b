import 'package:donakko/beranda/aboutMe.dart';
import 'package:donakko/beranda/donasi_view.dart';
import 'package:donakko/data/insert.dart';
import 'package:donakko/beranda/insert_view.dart';
import 'package:flutter/material.dart';
import 'package:donakko/beranda/login_view.dart';

class BerandaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image : DecorationImage(
            image : AssetImage('assets/images/bg_semua.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 100.0,
              width: 800.0,
              child: IconButton(
                icon: Image.asset("assets/images/logout_btn.png"),
                padding: EdgeInsets.only(left: 20.0,top: 50.0,right: 20.0,bottom: 20.0),
                iconSize: 100,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (c){
                    return LoginPage();
                  },),);
                },
              ),
            ),

            SizedBox(
              height: 100.0,
              width: 800.0,
              child: IconButton(
                icon: Image.asset("assets/images/quiz_btn.png"),
                iconSize: 100,
                padding: EdgeInsets.all(20.0),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (c){
                    return Insert();
                  },),);
                },
              ),
            ),

            SizedBox(
              height: 100.0,
              width: 800.0,
              child: IconButton(
                icon: Image.asset(
                    "assets/images/trivia_btn.png"
                ),
                iconSize: 100,
                padding: EdgeInsets.all(20.0),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (c){
                    return MyApp();
                  },),);
                },
              ),
            ),

            SizedBox(
              height: 100.0,
              width: 800.0,
              child: IconButton(
                icon: Image.asset(
                    "assets/images/reward_btn.png"
                ),
                iconSize: 100,
                padding: EdgeInsets.all(20.0),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (c){
                    return Image_Picker();
                  },),);
                },
              ),
            ),

            SizedBox(
              height: 100.0,
              width: 800.0,
              child: IconButton(
                icon: Image.asset("assets/images/edit_btn.png"),
                padding: EdgeInsets.only(left: 20.0,top : 20.0, right: 20.0,bottom: 20.0),
                iconSize: 100,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (c){
                    return aboutMe();
                  },),);
                },
              ),
            ),

          ],
        ),


      ),
    );
  }
}
