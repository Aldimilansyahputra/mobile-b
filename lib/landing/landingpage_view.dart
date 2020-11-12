import 'package:flutter/material.dart';
import 'package:donakko/beranda/beranda_view.dart';
import 'package:donakko/constant.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new BerandaPage(),
  ];



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _container[_bottomNavCurrentIndex],
        bottomNavigationBar: _buildBottomNavigation()
    );
  }

  Widget _buildBottomNavigation(){
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(
            Icons.home,
            color: DonakkoPalette.red,
          ),
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          title: new Text(
            'Beranda',
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.assignment,
            color: DonakkoPalette.red,
          ),
          icon: new Icon(
            Icons.assignment,
            color: Colors.grey,
          ),
          title: new Text('Donasi'),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.mail,
            color: DonakkoPalette.red,
          ),
          icon: new Icon(
            Icons.mail,
            color: Colors.grey,
          ),
          title: new Text('Pesan'),
        ),
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.person,
            color: DonakkoPalette.red,
          ),
          icon: new Icon(
            Icons.person,
            color: Colors.grey,
          ),
          title: new Text('Akun'),
        ),
      ],
    );
  }
}