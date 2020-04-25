import 'package:farmarket/src/screen/landing.dart';
import 'package:farmarket/src/screen/login.dart';
import 'package:farmarket/src/screen/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Routes{
  static MaterialPageRoute materialRoute(RouteSettings settings){
    switch(settings.name){
      case "/":
      return MaterialPageRoute(builder: (context) => Landing());
      break;

      case "/signup":
      return MaterialPageRoute(builder: (context)=>Signup());
      break;

      case "/login":
      return MaterialPageRoute(builder: (context) => Login());
      break;

      default:
      return MaterialPageRoute(builder: (context) => Login());
      break;
    }
  }

  static CupertinoPageRoute cupertinoRoute(RouteSettings settings){
    switch(settings.name){
      case "/":
      return CupertinoPageRoute(builder: (context) => Landing());
      break;

      case "/signup":
      return CupertinoPageRoute(builder: (context)=>Signup());
      break;

      case "/login":
      return CupertinoPageRoute(builder: (context) => Login());
      break;

      default:
      return CupertinoPageRoute(builder: (context) => Login());
      break;
    }
  }
}