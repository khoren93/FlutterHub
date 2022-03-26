import 'package:flutter/material.dart';
import 'package:flutterhub/configs/constants.dart';
import 'package:flutterhub/generated/l10n.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/language_widget.dart';
import '../widgets/setting_tile.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.settingsAppBarTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: spaceDefault),
            SettingTile(
              context,
              leading: FontAwesomeIcons.globe,
              title: S.current.settingsLanguageTitle,
              trailing: LanguageWidget(
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
