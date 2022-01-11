import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/components/popular_products.dart';

import 'package:shop_app/screens/home/components/special_offers.dart';
import 'package:shop_app/size_config.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenWidth(20)),
          HomeHeader(),
          SizedBox(height: getProportionateScreenWidth(30)),
          DiscountBanner(),
          SizedBox(height: getProportionateScreenWidth(30)),
          Categories(),
          SizedBox(height: getProportionateScreenWidth(30)),
          SpecialOffer(),
          SizedBox(height: getProportionateScreenWidth(30)),
          PopularProducts(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          )
        ],
      ),
    ));
  }
}
