import 'package:farmarket/src/models/size_config.dart';
import 'package:farmarket/src/routes.dart';
import 'package:farmarket/src/screen/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp();
  }
}

class PlatformApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (Platform.isIOS) {
      return LayoutBuilder(
        builder: (_, constraints) {
          SizeConfig().init(constraints);
          return CupertinoApp(
            onGenerateRoute: Routes.cupertinoRoute,
            home: Login(),
            theme: CupertinoThemeData(scaffoldBackgroundColor: Colors.white),
          );
        },
      );
    } else {
      return LayoutBuilder(
        builder: (_, constraints) {
          SizeConfig().init(constraints);
          return MaterialApp(
            onGenerateRoute: Routes.materialRoute,
            home: Login(),
            theme: ThemeData(scaffoldBackgroundColor: Colors.white),
          );
        },
      );
    }
  }
}
