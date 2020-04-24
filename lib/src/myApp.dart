import 'package:farmarket/src/routes.dart';
import 'package:farmarket/src/screen/login.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Routes.materialRoute,
      home: Login(),
    );
  }
}