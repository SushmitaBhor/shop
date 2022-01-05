import 'package:flutter/material.dart';
import 'components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";
  // const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    title: Text(
      "Sign In",
      style: TextStyle(color: Colors.black, fontFamily: 'Muli'),
    ),
    centerTitle: true,
  );
}
