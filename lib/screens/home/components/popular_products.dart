import 'package:flutter/material.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/DETAILS/details_screen.dart';
import 'package:shop_app/screens/home/components/section_title.dart';

import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          press: () {},
          text: 'Popular Product',
        ),
        SizedBox(
          height: getProportionateScreenWidth(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  demoProducts.length,
                  (index) => ProductCard(
                        product: demoProducts[index],
                        press: () => Navigator.pushNamed(
                            context, DetailsScreen.routeName,
                            arguments: ProductDetailsArguments(
                                product: demoProducts[index])),
                      )),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
