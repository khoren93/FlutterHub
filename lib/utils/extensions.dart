import 'dart:math';
import 'dart:ui';

import 'package:flutterhub/configs/app_store.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;

extension LocaleParsing on String {
  Locale parseLocale() {
    assert(contains('_') == true);
    var languageCode = split('_').first;
    var countryCode = split('_').last;
    return Locale.fromSubtags(
        languageCode: languageCode, countryCode: countryCode);
  }

  String toLangIcon() {
    assert(length == 2);
    switch (toLowerCase()) {
      case 'us':
      case 'en':
        return '๐บ๐ธ';
      case 'ru':
        return '๐ท๐บ';
      case 'am':
      case 'hy':
        return '๐ฆ๐ฒ';
      default:
        return '๐บ๐ธ';
    }
  }

  String toLangName() {
    assert(length == 2);
    switch (toLowerCase()) {
      case 'us':
      case 'en':
        return '${toLangIcon()} English';
      case 'ru':
        return '${toLangIcon()} ะ ัััะบะธะน';
      case 'am':
      case 'hy':
        return '${toLangIcon()} ีีกีตีฅึีฅีถ';
      default:
        return '${toLangIcon()} English';
    }
  }

  String toLangCode() {
    assert(contains('_') == true);
    return split('_').first;
  }
}

extension FormattedDate on DateTime {
  String toDateString() => DateFormat.yMMMd().format(this);

  String toTimeAgoString() => timeago.format(this,
      allowFromNow: true, locale: appStore.selectedLanguage);
}

extension DoubleExtensions on double {
  int toGridItemsCount() => min(this, spaceMaxWidth) ~/ spaceMaxGridItemWidth;
}
