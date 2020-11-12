import 'package:donakko/beranda/aboutMe.dart';
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
      appBar: DonakkoAppBar(
      ),
      backgroundColor: DonakkoPalette.grey200,
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 30.0),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    _about(BuildContext),
                  ],
                )),
          ],
        ),
      ),
    )
    );
  }

  Widget _about(BuildContext){
    return Column(
      children: <Widget> [
        Padding(
          padding: EdgeInsets.only(top: 50.0),
        ),
        RaisedButton(
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (c){
              return aboutMe();
            },),);
          },
          child: Text('Aboput Me'),

        )

      ],
    );
  }
}
