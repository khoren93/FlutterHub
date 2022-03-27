// ignore_for_file: overridden_fields

import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

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
