import 'package:avoid_keyboard/avoid_keyboard.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  SplashContent({Key key, @required this.text, @required this.image})
      : super(key: key);
  String text, image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onPanDown: (_) {
        FocusScope.of(context).unfocus();
      },
      child: AvoidKeyboard(
        spacing: 40,
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            children: [
              Text(
                'TOKOTO',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: getProportionateScreenWidth((36)),
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                text,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  height: getProportionateScreenHeight(265))
            ],
          ),
        ),
      ),
    );
  }
}
