import 'package:flutter/material.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';
import 'package:shop_app/models/Product.dart';

import '../../../size_config.dart';
import 'body.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({Key key, @required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    int selectedColor = 2;
    return Row(
      children: [
        ...List.generate(
            product.colors.length,
            (index) => ColorDot(
                  color: product.colors[index],
                  isSelected: selectedColor == index,
                )),
        Spacer(),
        RoundedIconBtn(iconData: Icons.remove, press: () {}),
        SizedBox(width: getProportionateScreenWidth(15)),
        RoundedIconBtn(iconData: Icons.add, press: () {})
      ],
    );
  }
}
