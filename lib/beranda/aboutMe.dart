import 'package:donakko/beranda/beranda_donakko_appbar.dart';
import 'package:flutter/material.dart';
import 'package:donakko/constant.dart';

class aboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: DonakkoAppBar(),
      body: SingleChildScrollView(
        child: Row(
          children: <Widget>[
            Container(
              height: 150,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(''),
                  Text('Nama Kelompok :'),
                  Text(''),
                  Text('1. Aldi Milansyah Putra - 182410102028'),
                  Text(''),
                  Text('2. Dinda Ayu Adiningsih - 182410102030'),
                  Text(''),
                  Text('3. Nur Achmad Kurniawan - 182410102071'),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
