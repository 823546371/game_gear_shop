import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_gear_shop/constants.dart';
import 'package:game_gear_shop/model/product.dart';
import 'package:game_gear_shop/screen/detail/detail_screen.dart';
import 'package:game_gear_shop/widget/rating_bar.dart';

class HomeProductList extends StatefulWidget {
  @override
  _HomeProductListState createState() => _HomeProductListState();
}

class _HomeProductListState extends State<HomeProductList> {
  int currentSelect = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: productList.length,
        itemBuilder: (context, index) => buildItem(index),
      ),
    );
  }

  Widget buildItem(int index) {
    double scale = 1;
    Color bgColor = mCardBackgroundColor;
    Color textColor = mPrimaryTextColor;

    if (currentSelect == index) {
      scale = 1.3;
      bgColor = mSelectCardBackgroundColor;
      textColor = Colors.white;
    }

    return GestureDetector(
      onTap: () {
        if (currentSelect == index) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DetailScreen();
              },
            ),
          );
        } else {
          setState(() {
            currentSelect = index;
          });
        }
      },
      child: Row(
        children: <Widget>[
          Container(
            width: 260 * scale,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Stack(
              children: <Widget>[
                Container(
                  width: 222 * scale,
                  decoration: BoxDecoration(
                      color: bgColor, borderRadius: BorderRadius.circular(21)),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 28,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              productList[index].name,
                              style: TextStyle(
                                  fontSize: 12 * scale,
                                  color: textColor,
                                  height: 1.5),
                            ),
                            SizedBox(
                              height: 8 * scale,
                            ),
                            RatingBar(
                              onRatingUpdate: (value) {},
                              selectColor: mSecondaryColor,
                              value: productList[index].rating,
                              maxRating: 5,
                              size: 14 * scale,
                            ),
                            SizedBox(
                              height: 8 * scale,
                            ),
                            Text(
                              '\$${productList[index].price}',
                              style: TextStyle(
                                fontSize: 14 * scale,
                                color: textColor,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: mSecondaryColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(21),
                                bottomRight: Radius.circular(21),
                              )),
                          child: SvgPicture.asset(
                            'assets/icons/icon_add_cart.svg',
                            width: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      productList[index].imagePic,
                      height: 56 * scale,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
