import 'package:flutter/material.dart';
import 'package:foodu/resources/style/style.dart';

class CategoryText extends StatelessWidget {
  String _name;

  CategoryText(this._name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 25),
      child: Column(
        children: <Widget>[
          Text(
            this._name,
            style: categoryText,
          ),
          Container(
            margin: EdgeInsets.only(top: 1),
            width: 15,
            height: 2,
            color: primaryGreen,
          )
        ],
      ),
    );
  }
}
