import 'package:flutter/cupertino.dart';
import 'package:flutter_demo_app/common/localization/default_localizations.dart';
import 'package:flutter_demo_app/common/localization/string_base.dart';

class CommonFunction {
  static AppStringBase getLocale(BuildContext context) {
    return AppLocalizations.of(context).currentLocalized;
  }
}