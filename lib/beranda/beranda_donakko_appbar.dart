import 'package:flutter/material.dart';
import 'package:donakko/constant.dart';

class DonakkoAppBar extends AppBar {
  DonakkoAppBar()
      : super(
      elevation: 0.25,
      backgroundColor: Colors.redAccent,
      flexibleSpace: _buildDonakkoAppBar());

  static Widget _buildDonakkoAppBar() {
    return Container(
      padding: EdgeInsets.only(left: 47.0, right: 16.0, top: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Image.asset(
            "assets/img_logotype.png",
            height: 50.0,
            width: 100.0,
          ),
        ],
      ),
    );
  }
}