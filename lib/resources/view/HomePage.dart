import 'package:flutter/material.dart';
import 'package:foodu/resources/components/ListFood.dart';
import '../style/style.dart';
import '../components/CategoryText.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: primaryBlack,
            ),
            onPressed: () {
              {}
            },
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.shopping_basket, color: primaryBlack),
                onPressed: null)
          ],
        ),
        floatingActionButton: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: secondWhite,
              boxShadow: [
                BoxShadow(
                    blurRadius: 16,
                    offset: Offset(0, 0),
                    spreadRadius: 4,
                    color: primaryBlack.withOpacity(0.1))
              ]),
          child: Row(
            children: <Widget>[
              Container(
                width: 100,
                height: double.infinity,
                margin: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: primaryGreen,
                    borderRadius: BorderRadius.circular(100)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.home,
                      color: primaryWhite,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Home",
                      style: titleFood.copyWith(
                          color: primaryWhite,
                          fontWeight: FontWeight.w600,
                          fontSize: 15),
                    )
                  ],
                ),
              ),
              IconButton(
                  icon: Icon(
                Icons.notifications,
                color: Colors.grey.withOpacity(0.7),
              )),
              IconButton(
                  icon: Icon(Icons.thumb_up,
                      color: Colors.grey.withOpacity(0.7))),
              IconButton(
                  icon: Icon(Icons.supervised_user_circle,
                      color: Colors.grey.withOpacity(0.7)))
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: secondWhite,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.only(left: 20, right: 5, top: 2),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                        suffixIcon: Icon(
                          Icons.search,
                          color: primaryBlack.withOpacity(0.5),
                        ),
                        hintStyle: TextStyle(
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                            color: primaryBlack.withOpacity(0.5))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: double.infinity,
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CategoryText("Fast Food"),
                      CategoryText("Desert"),
                      CategoryText("Drinks"),
                      CategoryText("Snacks"),
                      CategoryText("Heavy"),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 0),
                  child: Text("Popular Food", style: bigTitleBody),
                ),
                ListFood(
                    "https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=750&q=80",
                    "Pizza Yummy",
                    "Delicious food ever",
                    "IDR 100.000"),
                ListFood(
                    "https://images.unsplash.com/photo-1505576633757-0ac1084af824?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8c2FsYWR8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                    "Salad",
                    "Delicious vegan food",
                    "IDR 150.000"),
                ListFood(
                    "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8aGFtYnVyZ2VyfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                    "Krabby Patty",
                    "Delicious spombop",
                    "IDR 190.000"),
                SizedBox(height: 110)
              ],
            ),
          ),
        ),
      )),
    );
  }
}
