import 'package:flutter/material.dart';
import 'package:foodu/resources/style/style.dart';

class RadioButtonSize extends StatelessWidget {
  String _size;
  bool _active;

  RadioButtonSize(this._size, this._active);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: (this._active) ? primaryGreen : secondWhite,
          borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: Text(
          this._size,
          style: bigTitleBody.copyWith(color: (this._active) ? primaryWhite : primaryBlack, fontSize: 25),
        ),
      ),
    );
  }
}
