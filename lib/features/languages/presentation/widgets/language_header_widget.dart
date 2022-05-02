import 'package:flutter/material.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:flutterhub/features/core/domain/entities/models.dart';
import 'package:flutterhub/generated/l10n.dart';

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
