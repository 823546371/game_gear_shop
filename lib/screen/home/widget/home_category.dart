import 'package:flutter/material.dart';
import 'package:game_gear_shop/constants.dart';

class HomeCategory extends StatefulWidget {
  @override
  _HomeCategoryState createState() => _HomeCategoryState();
}

class _HomeCategoryState extends State<HomeCategory> {
  List<String> categorys = [
    'Controllers',
    'Headsets',
    'Keyboards',
    'Speakers',
    'VR Accessories'
  ];

  int currentSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categorys.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              currentSelect = index;
            });
          },
          child: Container(
            padding: EdgeInsets.only(left: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  categorys[index],
                  style: TextStyle(
                      fontSize: 12,
                      color: currentSelect == index
                          ? mSecondaryColor
                          : mSecondTextColor),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 22,
                  height: 3,
                  color: currentSelect == index
                      ? mSecondaryColor
                      : Colors.transparent,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
