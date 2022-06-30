// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Repsoitories`
  String get repositories {
    return Intl.message(
      'Repsoitories',
      name: 'repositories',
      desc: '',
      args: [],
    );
  }

  /// `Repository`
  String get repository {
    return Intl.message(
      'Repository',
      name: 'repository',
      desc: '',
      args: [],
    );
  }

  /// `Users`
  String get users {
    return Intl.message(
      'Users',
      name: 'users',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get user {
    return Intl.message(
      'User',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `Daily`
  String get daily {
    return Intl.message(
      'Daily',
      name: 'daily',
      desc: '',
      args: [],
    );
  }

  /// `Weekly`
  String get weekly {
    return Intl.message(
      'Weekly',
      name: 'weekly',
      desc: '',
      args: [],
    );
  }

  /// `Monthly`
  String get monthly {
    return Intl.message(
      'Monthly',
      name: 'monthly',
      desc: '',
      args: [],
    );
  }

  /// `Best match`
  String get repoBestMatch {
    return Intl.message(
      'Best match',
      name: 'repoBestMatch',
      desc: '',
      args: [],
    );
  }

  /// `Most stars`
  String get mostStars {
    return Intl.message(
      'Most stars',
      name: 'mostStars',
      desc: '',
      args: [],
    );
  }

  /// `Fewest stars`
  String get fewestStars {
    return Intl.message(
      'Fewest stars',
      name: 'fewestStars',
      desc: '',
      args: [],
    );
  }

  /// `Most forks`
  String get mostForks {
    return Intl.message(
      'Most forks',
      name: 'mostForks',
      desc: '',
      args: [],
    );
  }

  /// `Fewest forks`
  String get fewestForks {
    return Intl.message(
      'Fewest forks',
      name: 'fewestForks',
      desc: '',
      args: [],
    );
  }

  /// `Recently updated`
  String get recentlyUpdated {
    return Intl.message(
      'Recently updated',
      name: 'recentlyUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Last recently updated`
  String get lastRecentlyUpdated {
    return Intl.message(
      'Last recently updated',
      name: 'lastRecentlyUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Best match`
  String get userBestMatch {
    return Intl.message(
      'Best match',
      name: 'userBestMatch',
      desc: '',
      args: [],
    );
  }

  /// `Most followers`
  String get mostFollowers {
    return Intl.message(
      'Most followers',
      name: 'mostFollowers',
      desc: '',
      args: [],
    );
  }

  /// `Fewest followers`
  String get fewestFollowers {
    return Intl.message(
      'Fewest followers',
      name: 'fewestFollowers',
      desc: '',
      args: [],
    );
  }

  /// `Most recently joined`
  String get mostRecentlyJoined {
    return Intl.message(
      'Most recently joined',
      name: 'mostRecentlyJoined',
      desc: '',
      args: [],
    );
  }

  /// `Least recently joined`
  String get leastRecentlyJoined {
    return Intl.message(
      'Least recently joined',
      name: 'leastRecentlyJoined',
      desc: '',
      args: [],
    );
  }

  /// `Most repositories`
  String get mostRepositories {
    return Intl.message(
      'Most repositories',
      name: 'mostRepositories',
      desc: '',
      args: [],
    );
  }

  /// `Fewest repositories`
  String get fewestRepositories {
    return Intl.message(
      'Fewest repositories',
      name: 'fewestRepositories',
      desc: '',
      args: [],
    );
  }

  /// `Results for {language}`
  String languageResults(Object language) {
    return Intl.message(
      'Results for $language',
      name: 'languageResults',
      desc: '',
      args: [language],
    );
  }

  /// `Rate limit`
  String get rateLimit {
    return Intl.message(
      'Rate limit',
      name: 'rateLimit',
      desc: '',
      args: [],
    );
  }

  /// `Trending`
  String get trendingAppBarTitle {
    return Intl.message(
      'Trending',
      name: 'trendingAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get searchAppBarTile {
    return Intl.message(
      'Search',
      name: 'searchAppBarTile',
      desc: '',
      args: [],
    );
  }

  /// `Select a language`
  String get languagesAppBarTitle {
    return Intl.message(
      'Select a language',
      name: 'languagesAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Filter languages`
  String get languagesSearchText {
    return Intl.message(
      'Filter languages',
      name: 'languagesSearchText',
      desc: '',
      args: [],
    );
  }

  /// `Clear languages`
  String get languagesClearButton {
    return Intl.message(
      'Clear languages',
      name: 'languagesClearButton',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settingsAppBarTitle {
    return Intl.message(
      'Settings',
      name: 'settingsAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get settingsThemeModeTitle {
    return Intl.message(
      'Theme',
      name: 'settingsThemeModeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get settingsLanguageTitle {
    return Intl.message(
      'Language',
      name: 'settingsLanguageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to GitHub`
  String get loginAppBarTitle {
    return Intl.message(
      'Sign in to GitHub',
      name: 'loginAppBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `OAuth2`
  String get loginOAuthTab {
    return Intl.message(
      'OAuth2',
      name: 'loginOAuthTab',
      desc: '',
      args: [],
    );
  }

  /// `Personal`
  String get loginPersonalTab {
    return Intl.message(
      'Personal',
      name: 'loginPersonalTab',
      desc: '',
      args: [],
    );
  }

  /// `Basic`
  String get loginBasicTab {
    return Intl.message(
      'Basic',
      name: 'loginBasicTab',
      desc: '',
      args: [],
    );
  }

  /// `OAuth2 Sign In`
  String get loginOAuthTitle {
    return Intl.message(
      'OAuth2 Sign In',
      name: 'loginOAuthTitle',
      desc: '',
      args: [],
    );
  }

  /// `For API requests using Basic Authentication or OAuth2, you can make up to 5000 requests per hour. \n\nFor unauthenticated requests, the rate limit allows for up to 60 requests per hour.`
  String get loginOAuthDescription {
    return Intl.message(
      'For API requests using Basic Authentication or OAuth2, you can make up to 5000 requests per hour. \n\nFor unauthenticated requests, the rate limit allows for up to 60 requests per hour.',
      name: 'loginOAuthDescription',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with GitHub`
  String get loginOAuthButton {
    return Intl.message(
      'Sign in with GitHub',
      name: 'loginOAuthButton',
      desc: '',
      args: [],
    );
  }

  /// `Personal Sign In`
  String get loginPersonalTitle {
    return Intl.message(
      'Personal Sign In',
      name: 'loginPersonalTitle',
      desc: '',
      args: [],
    );
  }

  /// `These permissions are required\n{permissions}`
  String loginPersonalDescription(Object permissions) {
    return Intl.message(
      'These permissions are required\n$permissions',
      name: 'loginPersonalDescription',
      desc: '',
      args: [permissions],
    );
  }

  /// `Personal access token`
  String get loginPersonalLoginHint {
    return Intl.message(
      'Personal access token',
      name: 'loginPersonalLoginHint',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with token`
  String get loginPersonalButton {
    return Intl.message(
      'Sign in with token',
      name: 'loginPersonalButton',
      desc: '',
      args: [],
    );
  }

  /// `Basic Sign In`
  String get loginBasicTitle {
    return Intl.message(
      'Basic Sign In',
      name: 'loginBasicTitle',
      desc: '',
      args: [],
    );
  }

  /// `Username or email address`
  String get loginBasicLoginHint {
    return Intl.message(
      'Username or email address',
      name: 'loginBasicLoginHint',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get loginBasicPasswordHint {
    return Intl.message(
      'Password',
      name: 'loginBasicPasswordHint',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get loginBasicButton {
    return Intl.message(
      'Sign in',
      name: 'loginBasicButton',
      desc: '',
      args: [],
    );
  }

  /// `Watching`
  String get repositoryWatchingTitle {
    return Intl.message(
      'Watching',
      name: 'repositoryWatchingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Forks`
  String get repositoryForksTitle {
    return Intl.message(
      'Forks',
      name: 'repositoryForksTitle',
      desc: '',
      args: [],
    );
  }

  /// `Stars`
  String get repositoryStarsTitle {
    return Intl.message(
      'Stars',
      name: 'repositoryStarsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Homepage`
  String get repositoryHomepageTitle {
    return Intl.message(
      'Homepage',
      name: 'repositoryHomepageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Parent`
  String get repositoryParentTitle {
    return Intl.message(
      'Parent',
      name: 'repositoryParentTitle',
      desc: '',
      args: [],
    );
  }

  /// `Issues`
  String get repositoryIssuesTitle {
    return Intl.message(
      'Issues',
      name: 'repositoryIssuesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Commits`
  String get repositoryCommitsTitle {
    return Intl.message(
      'Commits',
      name: 'repositoryCommitsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Pull Requests`
  String get repositoryPullRequestsTitle {
    return Intl.message(
      'Pull Requests',
      name: 'repositoryPullRequestsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Branches`
  String get repositoryBranchesTitle {
    return Intl.message(
      'Branches',
      name: 'repositoryBranchesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Releases`
  String get repositoryReleasesTitle {
    return Intl.message(
      'Releases',
      name: 'repositoryReleasesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Events`
  String get repositoryEventsTitle {
    return Intl.message(
      'Events',
      name: 'repositoryEventsTitle',
      desc: '',
      args: [],
    );
  }

  /// `My Notifications`
  String get repositoryNotificationsTitle {
    return Intl.message(
      'My Notifications',
      name: 'repositoryNotificationsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Contributors`
  String get repositoryContributorsTitle {
    return Intl.message(
      'Contributors',
      name: 'repositoryContributorsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Source Code`
  String get repositorySourceTitle {
    return Intl.message(
      'Source Code',
      name: 'repositorySourceTitle',
      desc: '',
      args: [],
    );
  }

  /// `Star History`
  String get repositoryStarHistoryTitle {
    return Intl.message(
      'Star History',
      name: 'repositoryStarHistoryTitle',
      desc: '',
      args: [],
    );
  }

  /// `Count Lines of Code`
  String get repositoryCountLinesOfCodeTitle {
    return Intl.message(
      'Count Lines of Code',
      name: 'repositoryCountLinesOfCodeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Repositories`
  String get userRepositoriesTitle {
    return Intl.message(
      'Repositories',
      name: 'userRepositoriesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Followers`
  String get userFollowersTitle {
    return Intl.message(
      'Followers',
      name: 'userFollowersTitle',
      desc: '',
      args: [],
    );
  }

  /// `Following`
  String get userFollowingTitle {
    return Intl.message(
      'Following',
      name: 'userFollowingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Stars`
  String get userStarsTitle {
    return Intl.message(
      'Stars',
      name: 'userStarsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Watching`
  String get userWatchingTitle {
    return Intl.message(
      'Watching',
      name: 'userWatchingTitle',
      desc: '',
      args: [],
    );
  }

  /// `Events`
  String get userEventsTitle {
    return Intl.message(
      'Events',
      name: 'userEventsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Profile Summary`
  String get userProfileSummaryTitle {
    return Intl.message(
      'Profile Summary',
      name: 'userProfileSummaryTitle',
      desc: '',
      args: [],
    );
  }

  /// `Contributions`
  String get userContributionsTitle {
    return Intl.message(
      'Contributions',
      name: 'userContributionsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Pinned`
  String get userPinnedSectionTitle {
    return Intl.message(
      'Pinned',
      name: 'userPinnedSectionTitle',
      desc: '',
      args: [],
    );
  }

  /// `Organizations`
  String get userOrganizationsSectionTitle {
    return Intl.message(
      'Organizations',
      name: 'userOrganizationsSectionTitle',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'hy', countryCode: 'AM'),
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
