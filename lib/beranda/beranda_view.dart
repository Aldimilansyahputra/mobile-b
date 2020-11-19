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
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 100.0),
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    _Donasi(BuildContext),
                    _Akun(BuildContext),
                    _Inbox(BuildContext),
                    _About(BuildContext),
                  ],
                )),
          ],
        ),
      ),
    )
    );
  }


  Widget _Donasi(BuildContext){
    return Container(
      margin: const EdgeInsets.only(top: 30.0, bottom: 30.0),
      child: RaisedButton(
        padding: EdgeInsets.only(left: 40.0, top: 20.0, bottom: 20.0, right: 40.0),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (c){
            return aboutMe();
          },),);
        },
        child: Text('Donasi'),
      ),
    /*  children: <Widget> [
        RaisedButton(
          padding: EdgeInsets.only(left: 40.0, top: 20.0, bottom: 20.0, right: 40.0),
          onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (c){
              return aboutMe();
            },),);
          },
          child: Text('Donasi'),

        )

      ],*/
    );
  }

  Widget _Akun(BuildContext){
    return Container(
      margin: const EdgeInsets.only(top: 30.0, bottom: 30.0),
      child: RaisedButton(
        padding: EdgeInsets.only(left: 40.0, top: 20.0, bottom: 20.0, right: 40.0),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (c){
            return aboutMe();
          },),);
        },
        child: Text('Akun'),
      ),
    );
  }

  Widget _Inbox(BuildContext){
    return Container(
      margin: const EdgeInsets.only(top: 30.0, bottom: 30.0),
      child: RaisedButton(
        padding: EdgeInsets.only(left: 40.0, top: 20.0, bottom: 20.0, right: 40.0),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (c){
            return aboutMe();
          },),);
        },
        child: Text('Inbox'),
      ),
    );
  }

  Widget _About(BuildContext){
    return Container(
      margin: const EdgeInsets.only(top: 30.0, bottom: 30.0),
      child: RaisedButton(
        padding: EdgeInsets.only(left: 40.0, top: 20.0, bottom: 20.0, right: 40.0),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (c){
            return aboutMe();
          },),);
        },
        child: Text('About'),
      ),
    );
  }






}
