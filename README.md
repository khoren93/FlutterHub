# FlutterHub

<p align="center">
  <img src="https://github.com/khoren93/FlutterHub/blob/main/app_logo.svg" alt="FlutterHub logo" height="80" >
</p>

<p align="center">
  Cross-platform GitHub client in Flutter and BLoC clean architecture.
</p>

<p align="center">  
  <a href="https://github.com/khoren93/SwiftHub">
    SwiftHub - Swift version is available
  </a>
</p>

<p align="center">  
  <a href="https://khoren93.github.io/flutterhub_web/#/">
    Try Web version
  </a>
</p>

## Get Started
To get started, you need to

1. Install dependencies
```sh
flutter pub get
```

2. Run
```sh
flutter run
```

## App Features
- [x] Basic, Personal Access Token and OAuth2 authentication
- [x] View trending repositories and users ([github-trending-api](https://github.com/huchenme/github-trending-api))
- [x] Advanced searching and sorting repositories and users, filter by language
- [ ] View repository and user details, events, issues, commits, pull requests, contributors, etc...
- [ ] View issue and pull request messages
- [ ] Tool for counting lines of code from github repositories ([codetabs](https://github.com/jolav/codetabs)) ([charts_flutter](https://pub.dev/packages/charts_flutter))
- [x] The missing star history graph of github repos ([stars-history](https://github.com/timqian/star-history))
- [ ] Quickly browse the history of a file from any git repository ([git-history](https://github.com/pomber/git-history))
- [x] Tool for visualizing GitHub profiles ([profile-summary-for-github](https://github.com/tipsy/profile-summary-for-github))
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

## VSCode extensions that I use
- [Flutter](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter) - Flutter support and debugger for Visual Studio Code.
- [Flutter Intl](https://marketplace.visualstudio.com/items?itemName=localizely.flutter-intl) - Flutter localization binding from .arb files with official Intl library
- [bloc](https://marketplace.visualstudio.com/items?itemName=FelixAngelov.bloc) - Support for the bloc library and provides tools for effectively creating blocs for both Flutter and AngularDart apps.
- [Flutter Feature Scaffolding](https://marketplace.visualstudio.com/items?itemName=KiritchoukC.flutter-clean-architecture) - Add new feature easily with well structured directories (Clean Architecture pattern)
- [Awesome Flutter Snippets](https://marketplace.visualstudio.com/items?itemName=Nash.awesome-flutter-snippets) - Awesome Flutter Snippets is a collection snippets and shortcuts for commonly used Flutter functions and classes
- [FlutterPubOpen](https://marketplace.visualstudio.com/items?itemName=AndrijaRubelj.flutterpubopen) - Opens pub.dev package and API for your pubspec.yaml dependencies
- [Error Lens](https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens) - Improve highlighting of errors, warnings and other language diagnostics.
- [GitLens — Git supercharged](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) - Supercharge Git within VS Code — Visualize code authorship at a glance via Git blame annotations and CodeLens and so much more
- [indent-rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow) - Makes indentation easier to read
- [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense) - Visual Studio Code plugin that autocompletes filenames
- [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme) - Material Design Icons for Visual Studio Code
- [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons) - Icons for Visual Studio Code
- [GitHub Copilot](https://marketplace.visualstudio.com/items?itemName=GitHub.copilot) - Your AI pair programmer 


## License
MIT License. See [LICENSE](https://github.com/khoren93/FlutterHub/blob/master/LICENSE).
