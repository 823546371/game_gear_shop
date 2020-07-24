import 'package:flutter/material.dart';
import 'package:game_gear_shop/constants.dart';
import 'package:game_gear_shop/widget/rating_bar.dart';

class DetailIntro extends StatelessWidget {
  const DetailIntro({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Dualshock 4 Jet Black',
            style: TextStyle(
              color: mPrimaryTextColor,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          RatingBar(
            onRatingUpdate: (value) {},
            maxRating: 5,
            value: 4,
            selectColor: mSecondaryColor,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Unleash your color with the arrival of four new '
            'styles. Each wireless controller comes loaded with '
            'the same DUALSHOCK®4 features including touch '
            'pad, motion sensors and built-in rechargeable '
            'battery.',
            style: TextStyle(
              color: mSecondTextColor,
              fontSize: 13,
              letterSpacing: 0.9,
              height: 2
            ),
          ),
        ],
      ),
    );
  }
}
