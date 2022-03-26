import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:nb_utils/nb_utils.dart';

part 'app_store.g.dart';

AppStore appStore = AppStore();

class AppStore = AppStoreBase with _$AppStore;

const isUserLoggedInPref = 'isUserLoggedInPref';
const themeModePref = 'themeModePref';
const colorSchemeIndexPref = 'colorSchemeIndexPref';
const isNotificationsOnPref = 'isNotificationsOnPref';
const languagePref = 'languagePref';

abstract class AppStoreBase with Store {
  @observable
  bool hasInternetConnection = true;

  @observable
  bool isUserLoggedIn = false;

  @observable
  ThemeMode themeMode = ThemeMode.system;

  @observable
  int colorSchemeIndex = 4;

  @observable
  bool isNotificationsOn = true;

  @observable
  String selectedLanguage = 'en_US';

  @action
  Future<void> toggleUserLoggedIn({bool? value}) async {
    isUserLoggedIn = value ?? !isUserLoggedIn;
    setValue(isUserLoggedInPref, isUserLoggedIn);
  }

  @action
  Future<void> setThemeMode(ThemeMode value) async {
    themeMode = value;
    setValue(themeModePref, themeMode.toString());
  }

  @action
  Future<void> setColorSchemeIndex(int value) async {
    colorSchemeIndex = value;
    await setValue(colorSchemeIndexPref, colorSchemeIndex);
  }

  @action
  Future<void> toggleNotificationsMode({bool? value}) async {
    isNotificationsOn = value ?? !isNotificationsOn;
    setValue(isNotificationsOnPref, isNotificationsOn);
  }

  @action
  Future<void> setLanguage(String aLanguage) async {
    selectedLanguage = aLanguage;
    await setValue(languagePref, aLanguage);
  }
}
