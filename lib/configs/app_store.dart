import 'package:flutter/material.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/features/menu/data/models/rate_limit.dart';
import 'package:flutterhub/utils/secure_storage.dart';
import 'package:flutterhub/utils/shared_pref.dart';
import 'package:mobx/mobx.dart';

part 'app_store.g.dart';

AppStore appStore = AppStore();

class AppStore = AppStoreBase with _$AppStore;

const currentUserPref = 'currentUserPref';
const isUserLoggedInPref = 'isUserLoggedInPref';
const themeModePref = 'themeModePref';
const colorSchemeIndexPref = 'colorSchemeIndexPref';
const isNotificationsOnPref = 'isNotificationsOnPref';
const languagePref = 'languagePref';

abstract class AppStoreBase with Store {
  @observable
  bool hasInternetConnection = true;

  @observable
  Token? token;

  @observable
  User? currentUser;

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

  @observable
  RateLimit rateLimit = RateLimit();

  @action
  Future<void> saveToken(Token value) async {
    token = value;
    isUserLoggedIn = true;
    await SecureStorage.instance.saveToken(value);
  }

  @action
  Future<void> deleteToken() async {
    token = null;
    isUserLoggedIn = false;
    rateLimit = RateLimit();
    await SecureStorage.instance.deleteToken();
  }

  @action
  Future<void> saveUser(User value) async {
    currentUser = value;
    await setPrefValue(currentUserPref, value.toJson());
  }

  @action
  Future<void> deleteUser() async {
    currentUser = null;
    await removePrefKey(currentUserPref);
  }

  @action
  Future<void> setThemeMode(ThemeMode value) async {
    themeMode = value;
    setPrefValue(themeModePref, themeMode.toString());
  }

  @action
  Future<void> setColorSchemeIndex(int value) async {
    colorSchemeIndex = value;
    await setPrefValue(colorSchemeIndexPref, colorSchemeIndex);
  }

  @action
  Future<void> toggleNotificationsMode({bool? value}) async {
    isNotificationsOn = value ?? !isNotificationsOn;
    setPrefValue(isNotificationsOnPref, isNotificationsOn);
  }

  @action
  Future<void> setLanguage(String aLanguage) async {
    selectedLanguage = aLanguage;
    await setPrefValue(languagePref, aLanguage);
  }
}
