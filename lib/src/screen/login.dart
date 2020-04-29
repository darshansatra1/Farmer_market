import 'dart:io';

import 'package:farmarket/src/models/size_config.dart';
import 'package:farmarket/src/styles/colors.dart';
import 'package:farmarket/src/styles/textField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return CupertinoPageScaffold(
        child: pageBody(context),
      );
    } else {
      return Scaffold(
        body: pageBody(context),
      );
    }
  }

  Widget pageBody(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: SizeConfig.heightMultiplier * 20,
          ),
          Container(
              child: FlutterLogo(
            size: SizeConfig.imageSizeMultiplier * 30,
          )),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: TextFieldStyle.textBoxVertical(),
                horizontal: TextFieldStyle.textBoxHorizontal()),
            child: emailTextField(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: TextFieldStyle.textBoxVertical(),
                horizontal: TextFieldStyle.textBoxHorizontal()),
            child: passwordTextField(),
          ),
        ]),
      ),
    );
  }

  Widget emailTextField() {
    return TextField(
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.green(),
          ),
          borderRadius:
              BorderRadius.circular(SizeConfig.heightMultiplier * 2.5),
        ),
        labelText: 'Email',
        labelStyle: TextStyle(color: AppColor.darkGrey()),
      ),
    );
  }

  Widget passwordTextField() {
    return TextField(
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColor.green(),
          ),
          borderRadius:
              BorderRadius.circular(SizeConfig.heightMultiplier * 2.5),
        ),
        labelText: 'Password',
        labelStyle: TextStyle(color: AppColor.darkGrey()),
      ),
    );
  }
}
