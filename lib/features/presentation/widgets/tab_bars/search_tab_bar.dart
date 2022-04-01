import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../generated/l10n.dart';

enum SearchType { repository, user }

extension SearchTypeExtension on SearchType {
  String get title {
    switch (this) {
      case SearchType.repository:
        return S.current.repositories;
      case SearchType.user:
        return S.current.users;
    }
  }

  IconData get icon {
    switch (this) {
      case SearchType.repository:
        return FontAwesomeIcons.bookBookmark;
      case SearchType.user:
        return FontAwesomeIcons.solidUser;
    }
  }
}

TabBar buildSearchTypeTabs(BuildContext context, TabController controller) {
  return TabBar(
    controller: controller,
    tabs: SearchType.values.map((model) {
      return Tab(
        text: model.title,
        icon: Icon(model.icon),
      );
    }).toList(),
  );
}
