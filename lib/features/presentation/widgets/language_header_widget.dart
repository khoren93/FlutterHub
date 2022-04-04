import 'package:flutter/material.dart';

import '../../../configs/constants.dart';
import '../../../generated/l10n.dart';
import '../../domain/entities/models.dart';

class LanguageHeaderWidget extends StatelessWidget {
  const LanguageHeaderWidget({
    Key? key,
    required this.context,
    required this.language,
  }) : super(key: key);

  final BuildContext context;
  final RepositoryLanguage? language;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingDefault,
      child: Text(
        S.current.languageResults(language?.name ?? ''),
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
