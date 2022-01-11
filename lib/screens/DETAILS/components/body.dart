import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/DETAILS/components/product_description.dart';
import 'package:shop_app/screens/DETAILS/components/product_images.dart';
import 'package:shop_app/screens/DETAILS/components/top_rounded_container.dart';
import 'package:shop_app/size_config.dart';

import 'color_dots.dart';

class Body extends StatelessWidget {
  Body({Key key, @required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressOnSeeMore: () {},
                ),
                TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(40)),
                      child: Column(
                        children: [
                          ColorDots(
                            product: product,
                          ),
                          TopRoundedContainer(
                              color: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: SizeConfig.screenWidth * 0.15,
                                    right: SizeConfig.screenWidth * 0.15,
                                    top: getProportionateScreenWidth(15),
                                    bottom: getProportionateScreenWidth(40)),
                                child: DefaultButton(
                                  text: 'Add to Cart',
                                  press: () {},
                                ),
                              ))
                        ],
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({Key key, @required this.color, this.isSelected = false})
      : super(key: key);

  final Color color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
          // color: product.colors[0],
          shape: BoxShape.circle,
          border: Border.all(
              color: isSelected ? kPrimaryColor : Colors.transparent)),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
