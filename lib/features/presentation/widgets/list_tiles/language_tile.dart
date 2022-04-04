import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../domain/entities/models.dart';

class LanguageTile extends StatelessWidget {
  const LanguageTile({
    Key? key,
    required this.item,
    this.selected = false,
    this.onTap,
  }) : super(key: key);

  final RepositoryLanguage item;
  final bool selected;
  final Function(RepositoryLanguage)? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(item.name ?? ''),
        trailing: selected ? const Icon(FontAwesomeIcons.check) : null,
        selected: selected,
        onTap: () {
          onTap?.call(item);
        },
      ),
    );
  }
}
