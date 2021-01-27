import 'package:flutter/material.dart';
import 'package:foodu/resources/components/RadioButtonSize.dart';
import 'package:foodu/resources/style/style.dart';

class DetailFoodPage extends StatefulWidget {
  @override
  _DetailFoodPageState createState() => _DetailFoodPageState();
}

class _DetailFoodPageState extends State<DetailFoodPage> {
  int _activeButton;
  int _quantity = 0;
  bool _quantityAction;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: primaryBlack,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.more_vert_rounded, color: primaryBlack),
                onPressed: null)
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Krabby Patty",
                  style: bigTitleBody,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 100),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur.",
                    style: subtitle,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Image(
                    image: AssetImage("assets/images/burger.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    "Size :",
                    style: subtitle.copyWith(color: primaryBlack),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    InkWell(
                      child: RadioButtonSize(
                          "S", (this._activeButton == 1) ? true : false),
                      onTap: () {
                        setState(() {
                          this._activeButton = 1;
                        });
                      },
                    ),
                    InkWell(
                      child: RadioButtonSize(
                          "M", (this._activeButton == 2) ? true : false),
                      onTap: () {
                        setState(() {
                          this._activeButton = 2;
                        });
                      },
                    ),
                    InkWell(
                      child: RadioButtonSize(
                          "L", (this._activeButton == 3) ? true : false),
                      onTap: () {
                        setState(() {
                          this._activeButton = 3;
                        });
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Quantity :",
                    style: subtitle.copyWith(color: primaryBlack),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: (this._quantityAction == false)
                                ? primaryGreen
                                : secondWhite,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            size: 15,
                            color: (this._quantityAction == false)
                                ? primaryWhite
                                : primaryBlack,
                          ),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          this._quantityAction = false;
                          (this._quantity > 0)
                              ? this._quantity -= 1
                              : this._quantity = 0;
                        });
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(this._quantity.toString(),
                          style: bigTitleBody.copyWith(
                              color: primaryBlack, fontSize: 25)),
                    ),
                    InkWell(
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            color: (this._quantityAction == true)
                                ? primaryGreen
                                : secondWhite,
                            borderRadius: BorderRadius.circular(100)),
                        child: Center(
                          child: RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: (this._quantityAction == true)
                                  ? primaryWhite
                                  : primaryBlack,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        setState(() {
                          this._quantityAction = true;
                          this._quantity += 1;
                        });
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "Price",
                    style: subtitle.copyWith(color: Colors.grey),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      "IDR 45.999",
                      style: priceText.copyWith(fontSize: 22),
                    ),
                    Spacer(),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: secondWhite),
                      child: Icon(
                        Icons.thumb_up_alt_outlined,
                        color: primaryBlack,
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: primaryGreen),
                      child: Icon(
                        Icons.shopping_cart,
                        color: primaryWhite,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10)
              ],
            ),
          ),
        )),
      ),
    );
  }
}
