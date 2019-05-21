import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_app/common/net/code.dart';
import 'package:flutter_demo_app/page/HomePage.dart';
import 'package:flutter_demo_app/page/WelcomePage.dart';
import 'package:flutter_demo_app/common/redux/app_state.dart';
import 'package:flutter_demo_app/utils/common_function.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'common/localization/app_localizations_delegate.dart';
import 'common/net/event/http_error_event.dart';

void main() {
  runZoned(() {
    runApp(FlutterReduxApp());
    PaintingBinding.instance.imageCache.maximumSize = 100;
  }, onError: (Object obj, StackTrace stack) {
    print(obj);
    print(stack);
  });
}

class FlutterReduxApp extends StatelessWidget {
  /// 创建Store，引用 GSYState 中的 appReducer 实现 Reducer 方法
  /// initialState 初始化 State
  final store = new Store<AppState>(
    appReducer,

    ///初始化数据
    initialState: new AppState(themeData: ThemeData(primarySwatch: Colors.blue, platform: TargetPlatform.android), locale: Locale('zh', 'CH')),
  );

  FlutterReduxApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// 通过 StoreProvider 应用 store
    return new StoreProvider(
      store: store,
      child: new StoreBuilder<AppState>(builder: (context, store) {
        return new MaterialApp(

          ///多语言实现代理
            localizationsDelegates: [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              AppLocalizationsDelegate.delegate,
            ],
            locale: store.state.locale,
            supportedLocales: [store.state.locale],
            theme: store.state.themeData,
            routes: {
              WelcomePage.pageName: (context) {
                store.state.platformLocale = Localizations.localeOf(context);
                return WelcomePage();
              },
              MyHomePage.pageName: (context) {
                ///通过 Localizations.override 包裹一层，
                return new GSYLocalizations(
                  child: new MyHomePage(title: "Home Page",),
                );
              },
//              LoginPage.sName: (context) {
//                return new GSYLocalizations(
//                  child: new LoginPage(),
//                );
//              },
            });
      }),
    );
  }
}

class GSYLocalizations extends StatefulWidget {
  final Widget child;

  GSYLocalizations({Key key, this.child}) : super(key: key);

  @override
  State<GSYLocalizations> createState() {
    return new _GSYLocalizations();
  }
}

class _GSYLocalizations extends State<GSYLocalizations> {
  StreamSubscription stream;

  @override
  Widget build(BuildContext context) {
    return new StoreBuilder<AppState>(builder: (context, store) {
      ///通过 StoreBuilder 和 Localizations 实现实时多语言切换
      return new Localizations.override(
        context: context,
        locale: store.state.locale,
        child: widget.child,
      );
    });
  }

  @override
  void initState() {
    super.initState();
    stream = Code.eventBus.on<HttpErrorEvent>().listen((event) {
      errorHandleFunction(event.code, event.message);
    });
  }

  @override
  void dispose() {
    super.dispose();
    if (stream != null) {
      stream.cancel();
      stream = null;
    }
  }

  errorHandleFunction(int code, message) {
    switch (code) {
      case Code.NETWORK_ERROR:
        Fluttertoast.showToast(msg: CommonFunction.getLocale(context).networkError);
        break;
      case 401:
        Fluttertoast.showToast(msg: CommonFunction.getLocale(context).networkError401);
        break;
      case 403:
        Fluttertoast.showToast(msg: CommonFunction.getLocale(context).networkError403);
        break;
      case 404:
        Fluttertoast.showToast(msg: CommonFunction.getLocale(context).networkError404);
        break;
      case Code.NETWORK_TIMEOUT:
      //超时
        Fluttertoast.showToast(msg: CommonFunction.getLocale(context).networkErrorTimeout);
        break;
      default:
        Fluttertoast.showToast(msg: CommonFunction.getLocale(context).networkErrorUnknown + " " + message);
        break;
    }
  }
}
