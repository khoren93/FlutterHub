# FlutterHub

<p align="center">
  Cross-platform GitHub client in Flutter and BLoC clean architecture.
</p>

## App Features
- [ ] Basic, Personal Access Token and OAuth2 authentication
- [x] View trending repositories and users ([github-trending-api](https://github.com/huchenme/github-trending-api))
- [ ] Advanced searching and sorting repositories and users, filter by language
- [ ] View repository and user details, events, issues, commits, pull requests, contributors, etc...
- [ ] View issue and pull request messages
- [ ] Tool for counting lines of code from github repositories ([codetabs](https://github.com/jolav/codetabs)) ([charts_flutter](https://pub.dev/packages/charts_flutter))
- [ ] The missing star history graph of github repos ([stars-history](https://github.com/timqian/star-history))
- [ ] Quickly browse the history of a file from any git repository ([git-history](https://github.com/pomber/git-history))
- [ ] Tool for visualizing GitHub profiles ([profile-summary-for-github](https://github.com/tipsy/profile-summary-for-github))
- [ ] View a 3D model of your GitHub contribution grap ([skyline](https://skyline.github.com))
- [ ] Source file viewer and syntax highlighting
- [x] Color themes in light and dark modes ([flex_color_scheme](https://pub.dev/packages/flex_color_scheme))
- [x] In-app language switching (en, ru, hy)
- [ ] Whats New functionality
- [ ] Invite friends functionality
- [ ] Clone repository directly to app
- [x] Support iOS, Android, Web, and Windows

## Technologies
- [x] Clean architecture ([BLoC](https://pub.dev/packages/flutter_bloc))
- [x] Dependency injection ([GetIt](https://pub.dev/packages/get_it))
- [x] REST API v3 (for unauthenticated or basic authentication) ([Chopper](https://pub.dev/packages/chopper), [Freezed](https://pub.dev/packages/freezed))
- [ ] GraphQL API v4 (for OAuth2 authentication) ([graphql_flutter](https://pub.dev/packages/graphql_flutter))
- [ ] Mixpanel and Firebase analytics events
- [ ] Crash reporting
- [x] Logging
- [ ] Google ads implementation, can be enabled/disabled from settings
- [ ] Add tests

## License
MIT License. See [LICENSE](https://github.com/khoren93/flutterhub/blob/master/LICENSE).