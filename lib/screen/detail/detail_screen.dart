import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_gear_shop/constants.dart';
import 'package:game_gear_shop/screen/detail/widget/detail_add_cart.dart';
import 'package:game_gear_shop/screen/detail/widget/detail_header.dart';
import 'package:game_gear_shop/screen/detail/widget/detail_intro.dart';
import 'package:game_gear_shop/screen/detail/widget/detail_slider.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DetailHeader(),
          DetailSlider(),
          DetailIntro(),
          DetailAddCart()
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mSelectCardBackgroundColor,
      elevation: 0,
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/icons/icon_favorites.svg'),
          onPressed: () {},
        )
      ],
    );
  }
}

