import 'package:flutterhub/configs/constants.dart';

int pageForItems(bool isRefresh, List repositories) =>
    isRefresh ? 1 : repositories.length ~/ kPerPage + 2;
