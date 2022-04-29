// ignore_for_file: overridden_fields

import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:timeago/timeago.dart';

class MyRefreshLocalizations extends RefreshLocalizations {
  MyRefreshLocalizations(Locale locale) : super(locale);

  @override
  Map<String, RefreshString> values = {
    'en': EnRefreshString(),
    'ru': RuRefreshString(),
    'hy': HyRefreshString(),
  };

  static const RefreshLocalizationsDelegate delegate =
      MyRefreshLocalizationsDelegate();
}

class MyRefreshLocalizationsDelegate extends RefreshLocalizationsDelegate {
  const MyRefreshLocalizationsDelegate() : super();

  @override
  bool isSupported(Locale locale) {
    return [
      'en',
      'ru',
      'hy',
    ].contains(locale.languageCode);
  }

  @override
  Future<RefreshLocalizations> load(Locale locale) {
    return SynchronousFuture<RefreshLocalizations>(
        MyRefreshLocalizations(locale));
  }
}

class HyRefreshString extends RefreshString {
  @override
  String? canLoadingText = "Արձակեք ավելին բեռնելու համար";

  @override
  String? canRefreshText = "Արձակեք թարմացնելու համար";

  @override
  String? canTwoLevelText = "Արձակել երկրորդ հարկ մտնելու համար";

  @override
  String? idleLoadingText = "Քաշեք վերև ավելին բեռնելու համար";

  @override
  String? idleRefreshText = "Քաշեք ներքև թարմացնելու համար";

  @override
  String? loadFailedText = "Բեռնումը ձախողվեց";

  @override
  String? loadingText = "Բեռնվում է…";

  @override
  String? noMoreText = "Այլևս տվյալներ չկան";

  @override
  String? refreshCompleteText = "Թարմացումն ավարտված է";

  @override
  String? refreshFailedText = "Թարմացումը ձախողվեց";

  @override
  String? refreshingText = "Թարմացվում է…";
}

/// Armenian Messages
class HyTimeMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => 'առաջ';
  @override
  String suffixFromNow() => 'ից';
  @override
  String lessThanOneMinute(int seconds) => 'քիչ';
  @override
  String aboutAMinute(int minutes) => 'րոպե';
  @override
  String minutes(int minutes) => '$minutes րոպե';
  @override
  String aboutAnHour(int minutes) => 'ժամ';
  @override
  String hours(int hours) => '$hours ժամ';
  @override
  String aDay(int hours) => 'օր';
  @override
  String days(int days) => '$days օր';
  @override
  String aboutAMonth(int days) => 'ամիս';
  @override
  String months(int months) => '$months ամիս';
  @override
  String aboutAYear(int year) => 'տարի';
  @override
  String years(int years) => '$years տարի';
  @override
  String wordSeparator() => ' ';
}

/// Armenian short Messages
class HyShortTimeMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'հիմա';
  @override
  String aboutAMinute(int minutes) => '1 րոպե';
  @override
  String minutes(int minutes) => '$minutes րոպե';
  @override
  String aboutAnHour(int minutes) => '~1 ժամ';
  @override
  String hours(int hours) => '$hours ժամ';
  @override
  String aDay(int hours) => '~1 օր';
  @override
  String days(int days) => '$days օր';
  @override
  String aboutAMonth(int days) => '~1 ամիս';
  @override
  String months(int months) => '$months ամիս';
  @override
  String aboutAYear(int year) => '~1 տարի';
  @override
  String years(int years) => '$years տարի';
  @override
  String wordSeparator() => ' ';
}
