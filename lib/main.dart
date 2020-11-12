import 'package:flutter/material.dart';
import 'package:donakko/launcher/launcher_view.dart';
import 'package:donakko/landing/landingpage_view.dart';
import 'package:donakko/constant.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Donakko',
      theme: ThemeData(
        fontFamily: 'NeoSans',
        primaryColor: DonakkoPalette.red,
        accentColor: DonakkoPalette.blue,

      ),
      home: LauncherPage(),
    );
  }
}

