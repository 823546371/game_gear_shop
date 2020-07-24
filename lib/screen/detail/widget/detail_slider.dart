import 'package:flutter/material.dart';
import 'package:game_gear_shop/constants.dart';

class DetailSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 68,
            height: 68,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: mCardBackgroundColor,
              borderRadius: BorderRadius.circular(11),
              border: Border.all(
                color: mSelectCardBackgroundColor,
                width: 1.5,
              ),
            ),
            child: Image.asset('assets/images/detail1.png'),
          ),
          Container(
            width: 68,
            height: 68,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: mCardBackgroundColor,
                borderRadius: BorderRadius.circular(11)),
            child: Image.asset('assets/images/detail2.png'),
          ),
          Container(
            width: 68,
            height: 68,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: mCardBackgroundColor,
                borderRadius: BorderRadius.circular(11)),
            child: Image.asset('assets/images/detail3.png'),
          ),
          Container(
            width: 68,
            height: 68,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: mCardBackgroundColor,
                borderRadius: BorderRadius.circular(11)),
            child: Image.asset('assets/images/detail4.png'),
          ),
        ],
      ),
    );
  }
}
