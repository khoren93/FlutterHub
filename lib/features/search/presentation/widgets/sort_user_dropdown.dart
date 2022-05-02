import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

enum SortUserType {
  bestMatch,
  mostFollowers,
  fewestFollowers,
  mostRecentlyJoined,
  leastRecentlyJoined,
  mostRepositories,
  fewestRepositories,
}

extension SortTypeExtension on SortUserType {
  String get title {
    switch (this) {
      case SortUserType.bestMatch:
        return S.current.userBestMatch;
      case SortUserType.mostFollowers:
        return S.current.mostFollowers;
      case SortUserType.fewestFollowers:
        return S.current.fewestFollowers;
      case SortUserType.mostRecentlyJoined:
        return S.current.mostRecentlyJoined;
      case SortUserType.leastRecentlyJoined:
        return S.current.leastRecentlyJoined;
      case SortUserType.mostRepositories:
        return S.current.mostRepositories;
      case SortUserType.fewestRepositories:
        return S.current.fewestRepositories;
    }
  }

  String get sortValue {
    switch (this) {
      case SortUserType.bestMatch:
        return '';
      case SortUserType.mostFollowers:
      case SortUserType.fewestFollowers:
        return 'followers';
      case SortUserType.mostRecentlyJoined:
      case SortUserType.leastRecentlyJoined:
        return 'joined';
      case SortUserType.mostRepositories:
      case SortUserType.fewestRepositories:
        return 'repositories';
    }
  }

  String get orderValue {
    switch (this) {
      case SortUserType.bestMatch:
        return '';
      case SortUserType.mostFollowers:
      case SortUserType.mostRecentlyJoined:
      case SortUserType.mostRepositories:
        return 'desc';
      case SortUserType.leastRecentlyJoined:
      case SortUserType.fewestFollowers:
      case SortUserType.fewestRepositories:
        return 'asc';
    }
  }
}

class SortUserDropDown extends StatefulWidget {
  const SortUserDropDown({Key? key, this.onChanged}) : super(key: key);

  final Function(SortUserType?)? onChanged;

  @override
  State<SortUserDropDown> createState() => _SortUserDropDownState();
}

class _SortUserDropDownState extends State<SortUserDropDown> {
  SortUserType? selected = SortUserType.bestMatch;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<SortUserType>(
      value: selected,
      onChanged: (value) {
        setState(() {
          selected = value;
        });
        widget.onChanged?.call(value);
      },
      items: SortUserType.values
          .map((e) => DropdownMenuItem(value: e, child: Text(e.title)))
          .toList(),
    );
  }
}
