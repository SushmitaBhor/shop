import 'package:flutter/material.dart';
import './components/body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key key}) : super(key: key);
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "OTP Verification",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
