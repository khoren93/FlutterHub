// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppStore on AppStoreBase, Store {
  late final _$hasInternetConnectionAtom =
      Atom(name: 'AppStoreBase.hasInternetConnection', context: context);

  @override
  bool get hasInternetConnection {
    _$hasInternetConnectionAtom.reportRead();
    return super.hasInternetConnection;
  }

  @override
  set hasInternetConnection(bool value) {
    _$hasInternetConnectionAtom.reportWrite(value, super.hasInternetConnection,
        () {
      super.hasInternetConnection = value;
    });
  }

  late final _$tokenAtom = Atom(name: 'AppStoreBase.token', context: context);

  @override
  Token? get token {
    _$tokenAtom.reportRead();
    return super.token;
  }

  @override
  set token(Token? value) {
    _$tokenAtom.reportWrite(value, super.token, () {
      super.token = value;
    });
  }

  late final _$currentUserAtom =
      Atom(name: 'AppStoreBase.currentUser', context: context);

  @override
  User? get currentUser {
    _$currentUserAtom.reportRead();
    return super.currentUser;
  }

  @override
  set currentUser(User? value) {
    _$currentUserAtom.reportWrite(value, super.currentUser, () {
      super.currentUser = value;
    });
  }

  late final _$isUserLoggedInAtom =
      Atom(name: 'AppStoreBase.isUserLoggedIn', context: context);

  @override
  bool get isUserLoggedIn {
    _$isUserLoggedInAtom.reportRead();
    return super.isUserLoggedIn;
  }

  @override
  set isUserLoggedIn(bool value) {
    _$isUserLoggedInAtom.reportWrite(value, super.isUserLoggedIn, () {
      super.isUserLoggedIn = value;
    });
  }

  late final _$themeModeAtom =
      Atom(name: 'AppStoreBase.themeMode', context: context);

  @override
  ThemeMode get themeMode {
    _$themeModeAtom.reportRead();
    return super.themeMode;
  }

  @override
  set themeMode(ThemeMode value) {
    _$themeModeAtom.reportWrite(value, super.themeMode, () {
      super.themeMode = value;
    });
  }

  late final _$colorSchemeIndexAtom =
      Atom(name: 'AppStoreBase.colorSchemeIndex', context: context);

  @override
  int get colorSchemeIndex {
    _$colorSchemeIndexAtom.reportRead();
    return super.colorSchemeIndex;
  }

  @override
  set colorSchemeIndex(int value) {
    _$colorSchemeIndexAtom.reportWrite(value, super.colorSchemeIndex, () {
      super.colorSchemeIndex = value;
    });
  }

  late final _$isNotificationsOnAtom =
      Atom(name: 'AppStoreBase.isNotificationsOn', context: context);

  @override
  bool get isNotificationsOn {
    _$isNotificationsOnAtom.reportRead();
    return super.isNotificationsOn;
  }

  @override
  set isNotificationsOn(bool value) {
    _$isNotificationsOnAtom.reportWrite(value, super.isNotificationsOn, () {
      super.isNotificationsOn = value;
    });
  }

  late final _$selectedLanguageAtom =
      Atom(name: 'AppStoreBase.selectedLanguage', context: context);

  @override
  String get selectedLanguage {
    _$selectedLanguageAtom.reportRead();
    return super.selectedLanguage;
  }

  @override
  set selectedLanguage(String value) {
    _$selectedLanguageAtom.reportWrite(value, super.selectedLanguage, () {
      super.selectedLanguage = value;
    });
  }

  late final _$rateLimitAtom =
      Atom(name: 'AppStoreBase.rateLimit', context: context);

  @override
  RateLimit get rateLimit {
    _$rateLimitAtom.reportRead();
    return super.rateLimit;
  }

  @override
  set rateLimit(RateLimit value) {
    _$rateLimitAtom.reportWrite(value, super.rateLimit, () {
      super.rateLimit = value;
    });
  }

  late final _$saveTokenAsyncAction =
      AsyncAction('AppStoreBase.saveToken', context: context);

  @override
  Future<void> saveToken(Token value) {
    return _$saveTokenAsyncAction.run(() => super.saveToken(value));
  }

  late final _$deleteTokenAsyncAction =
      AsyncAction('AppStoreBase.deleteToken', context: context);

  @override
  Future<void> deleteToken() {
    return _$deleteTokenAsyncAction.run(() => super.deleteToken());
  }

  late final _$saveUserAsyncAction =
      AsyncAction('AppStoreBase.saveUser', context: context);

  @override
  Future<void> saveUser(User value) {
    return _$saveUserAsyncAction.run(() => super.saveUser(value));
  }

  late final _$deleteUserAsyncAction =
      AsyncAction('AppStoreBase.deleteUser', context: context);

  @override
  Future<void> deleteUser() {
    return _$deleteUserAsyncAction.run(() => super.deleteUser());
  }

  late final _$setThemeModeAsyncAction =
      AsyncAction('AppStoreBase.setThemeMode', context: context);

  @override
  Future<void> setThemeMode(ThemeMode value) {
    return _$setThemeModeAsyncAction.run(() => super.setThemeMode(value));
  }

  late final _$setColorSchemeIndexAsyncAction =
      AsyncAction('AppStoreBase.setColorSchemeIndex', context: context);

  @override
  Future<void> setColorSchemeIndex(int value) {
    return _$setColorSchemeIndexAsyncAction
        .run(() => super.setColorSchemeIndex(value));
  }

  late final _$toggleNotificationsModeAsyncAction =
      AsyncAction('AppStoreBase.toggleNotificationsMode', context: context);

  @override
  Future<void> toggleNotificationsMode({bool? value}) {
    return _$toggleNotificationsModeAsyncAction
        .run(() => super.toggleNotificationsMode(value: value));
  }

  late final _$setLanguageAsyncAction =
      AsyncAction('AppStoreBase.setLanguage', context: context);

  @override
  Future<void> setLanguage(String aLanguage) {
    return _$setLanguageAsyncAction.run(() => super.setLanguage(aLanguage));
  }

  @override
  String toString() {
    return '''
hasInternetConnection: ${hasInternetConnection},
token: ${token},
currentUser: ${currentUser},
isUserLoggedIn: ${isUserLoggedIn},
themeMode: ${themeMode},
colorSchemeIndex: ${colorSchemeIndex},
isNotificationsOn: ${isNotificationsOn},
selectedLanguage: ${selectedLanguage},
rateLimit: ${rateLimit}
    ''';
  }
}
