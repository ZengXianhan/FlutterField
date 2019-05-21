import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_demo_app/common/localization/string_base.dart';
import 'package:flutter_demo_app/common/localization/string_en.dart';
import 'package:flutter_demo_app/common/localization/string_zh.dart';

///自定义多语言实现
class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  ///根据不同 locale.languageCode 加载不同语言对应
  ///AppStringEn和AppStringZh都继承了AppStringBase
  static Map<String, AppStringBase> _localizedValues = {
    'en': new AppStringEn(),
    'zh': new AppStringZh(),
  };

  AppStringBase get currentLocalized {
    return _localizedValues[locale.languageCode];
  }

  ///通过 Localizations 加载当前的 AppLocalizations
  ///获取对应的 AppStringBase
  static AppLocalizations of(BuildContext context) {
    return Localizations.of(context, AppLocalizations);
  }
}
