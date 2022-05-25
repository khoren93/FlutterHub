import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterhub/utils/shared_pref.dart';
import 'utils/di.dart';
import 'package:logging/logging.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'app.dart';
import 'l10n/localizations.dart';
import 'utils/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  _setupLogging();
  _setupTimeago();
  await initializePrefs();
  await initDI();
  BlocOverrides.runZoned(
    () => runApp(const MyApp()),
    blocObserver: FlutterHubBlocObserver(),
  );
}

void _setupTimeago() {
  timeago.setLocaleMessages('en_US', timeago.EnMessages());
  timeago.setLocaleMessages('ru_RU', timeago.RuMessages());
  timeago.setLocaleMessages('hy_AM', HyTimeMessages());
}

_setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    debugPrint('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}
