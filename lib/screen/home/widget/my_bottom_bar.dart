import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_gear_shop/constants.dart';

class MyBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 42,
        margin: EdgeInsets.symmetric(horizontal: 28),
        decoration: BoxDecoration(
          color: mCardBackgroundColor,
          borderRadius: BorderRadius.circular(36),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: 20,
                  height: 2,
                  color: mSecondaryColor,
                ),
                Spacer(),
                SvgPicture.asset(
                  'assets/icons/icon_home.svg',
                  color: mSecondaryColor,
                  width: 20,
                ),
                Spacer(),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 20,
                  height: 2,
                  color: Colors.transparent,
                ),
                Spacer(),
                SvgPicture.asset(
                  'assets/icons/icon_heart.svg',
                  width: 20,
                ),
                Spacer(),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 20,
                  height: 2,
                  color: Colors.transparent,
                ),
                Spacer(),
                SvgPicture.asset(
                  'assets/icons/icon_cart.svg',
                  width: 20,
                ),
                Spacer(),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 20,
                  height: 2,
                  color: Colors.transparent,
                ),
                Spacer(),
                SvgPicture.asset(
                  'assets/icons/icon_user.svg',
                  width: 20,
                ),
                Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
