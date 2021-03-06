import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_demo_app/page/HomePage.dart';
import 'package:flutter_demo_app/page/SecondPage.dart';

class NavigatorUtils {

  ///替换
  static pushReplacementNamed(BuildContext context, String routeName) {
    Navigator.pushReplacementNamed(context, routeName);
  }

  ///切换无参数页面
  static pushNamed(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  //主页
  static goHome(BuildContext context) {
    Navigator.pushReplacementNamed(context, MyHomePage.pageName);
  }

  static goSecondPage(BuildContext context) {
    Navigator.pushNamed(context, SecondPage.pageName);
  }

//  static goHome(BuildContext context) {
//    NavigatorRouter(context, new MyHomePage(title: "title",));
//  }

//  static NavigatorRouter(BuildContext context, Widget widget) {
//    return Navigator.push(context, new CupertinoPageRoute(builder: (context) => widget));
//  }
}