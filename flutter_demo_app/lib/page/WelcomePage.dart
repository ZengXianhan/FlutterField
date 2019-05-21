import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_demo_app/common/redux/app_state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_demo_app/utils/navigator_utils.dart';
import 'package:flutter_lottie/flutter_lottie.dart';

class WelcomePage extends StatefulWidget {
  static final String pageName = "/";

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  bool hadInit = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (hadInit) {
      return;
    }
    hadInit = true;
    new Future.delayed(const Duration(seconds: 5, milliseconds: 500), () {
      NavigatorUtils.goHome(context);
      });
  }

  void onViewCreatedFile(LottieController controller) {

  }


  @override
  Widget build(BuildContext context) {
    return StoreBuilder<AppState>(
      builder: (context, store) {
        double size = 200;
        return new Container(
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              new Center(
                child: new Image(
                    image: new AssetImage('src/images/welcome.jpg')),
              ),
//              new Align(
//                alignment: Alignment.bottomCenter,
//                child: new Container(
//                  width: size,
//                  height: size,
//                  color: Colors.white,
//                  child: LottieView.fromFile(
//                    filePath: "src/files/rejection.json",
//                    autoPlay: true,
//                    loop: true,
//                    reverse: false,
//                    onViewCreated: onViewCreatedFile,
//                  ),
//                ),
//              )
            ],
          ),
        );
      },
    );
  }
}