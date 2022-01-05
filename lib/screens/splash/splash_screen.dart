import 'package:shop_app/size_config.dart';

import 'components/body.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
