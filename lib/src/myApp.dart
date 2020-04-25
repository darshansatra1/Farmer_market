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

class PlatformApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if(Platform.isIOS){
      return CupertinoApp(
        onGenerateRoute: Routes.cupertinoRoute,
        home: Login(),
      );
    }else{
      return MaterialApp(
        onGenerateRoute: Routes.materialRoute,
        home: Login(),
      );
    }
    
  }

}