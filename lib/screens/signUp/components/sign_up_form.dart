import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_suffix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  String? confirm_password;
  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildPasswordFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildConfirmPasswordFormField(),
            FormError(errors: errors),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            DefaultButton(
                text: "Continue",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    // Go to complete profile page
                  }
                })
          ],
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: (newValue) => email = newValue!,
        onChanged: (value) {
          if (value.isNotEmpty && !errors.contains(kEmailNullError)) {
            setState(() {
              removeError(error: kEmailNullError);
            });
          } else if (!emailValidationRegExp.hasMatch(value) &&
              !errors.contains(kInvalidEmailError)) {
            setState(() {
              removeError(error: kInvalidEmailError);
            });
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty && !errors.contains(kEmailNullError)) {
            setState(() {
              addError(error: kEmailNullError);
            });
            return "";
          } else if (!emailValidationRegExp.hasMatch(value) &&
              !errors.contains(kInvalidEmailError)) {
            setState(() {
              addError(error: kInvalidEmailError);
            });
            return "";
          }
          return null;
        },
        decoration: const InputDecoration(
            labelText: "Email",
            hintText: "Enter your mail",
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.black)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(
              svgIcon: 'assets/icons/Mail.svg',
            )));
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
        obscureText: true,
        onSaved: (newValue) => password = newValue!,
        onChanged: (value) {
          if (value.isNotEmpty) {
            removeError(error: kPassNullError);
          } else if (value.length >= 8) {
            removeError(error: kShortPassError);
          }
          password = value;
          return null;
        },
        validator: (value) {
          if (value!.isEmpty) {
            addError(error: kPassNullError);
            return "";
          } else if (value.length < 8) {
            addError(error: kShortPassError);
            return "";
          }
          return null;
        },
        decoration: const InputDecoration(
            labelText: "Password",
            hintText: "Enter your password",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.black)),
            suffixIcon: CustomSuffixIcon(
              svgIcon: 'assets/icons/Lock.svg',
            )));
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
        obscureText: true,
        onSaved: (newValue) => confirm_password = newValue!,
        onChanged: (value) {
          if (password == confirm_password) {
            removeError(error: kMatchPassError);
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty) {
            return "";
          } else if (password != confirm_password) {
            addError(error: kMatchPassError);
            return "";
          }
          return null;
        },
        decoration: const InputDecoration(
            labelText: "Confirm Password",
            hintText: "Re-enter your password",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide(color: Colors.black)),
            suffixIcon: CustomSuffixIcon(
              svgIcon: 'assets/icons/Lock.svg',
            )));
  }
}
