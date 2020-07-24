import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_gear_shop/constants.dart';
import 'package:game_gear_shop/screen/home/widget/home_category.dart';
import 'package:game_gear_shop/screen/home/widget/home_product_list.dart';
import 'package:game_gear_shop/screen/home/widget/home_title.dart';
import 'package:game_gear_shop/screen/home/widget/my_bottom_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      bottomNavigationBar: MyBottomBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HomeTitle(),
          HomeCategory(),
          HomeProductList(),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: mBackgroundColor,
      elevation: 0,
      brightness: Brightness.light,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/icon_menu.svg'),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/icons/icon_search.svg'),
          onPressed: () {},
        )
      ],
    );
  }
}

