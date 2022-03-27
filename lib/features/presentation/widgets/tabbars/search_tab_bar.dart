import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../generated/l10n.dart';

enum SearchType { repository, user }

class SearchTabModel {
  final SearchType type;
  final String title;
  final IconData icon;

  const SearchTabModel({
    required this.type,
    required this.title,
    required this.icon,
  });

  static List<SearchTabModel> items = [
    SearchTabModel(
      type: SearchType.repository,
      title: S.current.repositories,
      icon: FontAwesomeIcons.bookBookmark,
    ),
    SearchTabModel(
      type: SearchType.user,
      title: S.current.users,
      icon: FontAwesomeIcons.solidUser,
    ),
  ];
}

TabBar buildSearchTypeTabs(BuildContext context, TabController controller) {
  return TabBar(
    controller: controller,
    tabs: SearchTabModel.items.map((model) {
      return Tab(
        text: model.title,
        icon: Icon(model.icon),
      );
    }).toList(),
  );
}
