import 'package:flutter/material.dart';
import 'package:donakko/constant.dart';

class DonakkoAppBar extends AppBar {
  DonakkoAppBar()
      : super(
      elevation: 0.25,
      backgroundColor: DonakkoPalette.red,
      flexibleSpace: _buildDonakkoAppBar());

  static Widget _buildDonakkoAppBar() {
    return Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            "assets/img_logotype.png",
            height: 50.0,
            width: 100.0,
          ),
        ],
      ),
    );
  }
}