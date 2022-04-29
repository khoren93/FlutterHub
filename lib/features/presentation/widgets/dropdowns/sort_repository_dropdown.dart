import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

enum SortRepositoryType {
  bestMatch,
  mostStars,
  fewestStars,
  mostForks,
  fewestForks,
  recentlyUpdated,
  lastRecentlyUpdated,
}

extension SortTypeExtension on SortRepositoryType {
  String get title {
    switch (this) {
      case SortRepositoryType.bestMatch:
        return S.current.repoBestMatch;
      case SortRepositoryType.mostStars:
        return S.current.mostStars;
      case SortRepositoryType.fewestStars:
        return S.current.fewestStars;
      case SortRepositoryType.mostForks:
        return S.current.mostForks;
      case SortRepositoryType.fewestForks:
        return S.current.fewestForks;
      case SortRepositoryType.recentlyUpdated:
        return S.current.recentlyUpdated;
      case SortRepositoryType.lastRecentlyUpdated:
        return S.current.lastRecentlyUpdated;
    }
  }

  String get sortValue {
    switch (this) {
      case SortRepositoryType.bestMatch:
        return '';
      case SortRepositoryType.mostStars:
      case SortRepositoryType.fewestStars:
        return 'stars';
      case SortRepositoryType.mostForks:
      case SortRepositoryType.fewestForks:
        return 'forks';
      case SortRepositoryType.recentlyUpdated:
      case SortRepositoryType.lastRecentlyUpdated:
        return 'updated';
    }
  }

  String get orderValue {
    switch (this) {
      case SortRepositoryType.bestMatch:
        return '';
      case SortRepositoryType.mostStars:
      case SortRepositoryType.mostForks:
      case SortRepositoryType.recentlyUpdated:
        return 'desc';
      case SortRepositoryType.fewestForks:
      case SortRepositoryType.fewestStars:
      case SortRepositoryType.lastRecentlyUpdated:
        return 'asc';
    }
  }
}

class SortRepositoryDropDown extends StatefulWidget {
  const SortRepositoryDropDown({Key? key, this.onChanged}) : super(key: key);

  final Function(SortRepositoryType?)? onChanged;

  @override
  State<SortRepositoryDropDown> createState() => _SortRepositoryDropDownState();
}

class _SortRepositoryDropDownState extends State<SortRepositoryDropDown> {
  SortRepositoryType? selected = SortRepositoryType.bestMatch;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<SortRepositoryType>(
      value: selected,
      onChanged: (value) {
        setState(() {
          selected = value;
        });
        widget.onChanged?.call(value);
      },
      items: SortRepositoryType.values
          .map((e) => DropdownMenuItem(value: e, child: Text(e.title)))
          .toList(),
    );
  }
}
