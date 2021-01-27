import 'package:flutter/material.dart';
import 'package:foodu/resources/style/style.dart';
import 'package:foodu/resources/view/DetailFoodPage.dart';

class ListFood extends StatelessWidget {
  String _imgURL, _nameFood, _subttile, _price;

  ListFood(this._imgURL, this._nameFood, this._subttile, this._price);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: 130,
      decoration: BoxDecoration(
          color: secondWhite, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15),
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(this._imgURL), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(100)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                this._nameFood,
                style: titleFood,
              ),
              Text(
                this._subttile,
                style: subtitle,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                this._price,
                style: priceText,
              )
            ],
          ),
          Spacer(),
          InkWell(
            child: Container(
              margin: EdgeInsets.only(top: 54),
              width: 35,
              height: 35,
              child: Icon(
                Icons.add,
                color: primaryWhite,
              ),
              decoration: BoxDecoration(
                  color: primaryGreen,
                  borderRadius: BorderRadius.circular(100)),
            ),
            splashColor: Colors.grey,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailFoodPage();
              }));
            },
          )
        ],
      ),
    );
  }
}
