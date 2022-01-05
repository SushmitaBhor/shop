import 'package:flutter/material.dart';
import 'body.dart';

class LoginSuccessScreen extends StatelessWidget {
  const LoginSuccessScreen({Key? key}) : super(key: key);
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(
          'Login Success',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
