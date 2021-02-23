import 'package:cnmngroup/screens/auth/widgets/languages.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

import 'package:cnmngroup/screens/auth/auth.dart';


class ProfileBody extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<ProfileBody> {
  bool notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
          body: SettingsList(
            sections: [
              SettingsSection(
                title: 'Languages & Preferences',
                tiles: [
                  SettingsTile(
                    title: 'Language',
                    leading: Icon(Icons.language),
                    onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => LanguagesScreen()));
                    },
                  ),
                  SettingsTile(
                      title: 'Preferences',
                      leading: Icon(Icons.room_preferences),
                      onPressed: (BuildContext context) {},
                  ),
                  ]
                  ),
              SettingsSection(
                title: 'Settings',
              tiles: [
                  SettingsTile.switchTile(
                      title: 'Notifications',
                      enabled: notificationsEnabled,
                      leading: Icon(Icons.notifications_active),
                      switchValue: true,
                      onToggle: (value) {},
                  ),
                  SettingsTile(
                      title: 'Log out',
                    leading: Icon(Icons.login_outlined),
                    onTap: () {
                        context.signOut();
                        Navigator.of(context).push(AuthScreen.route);
                      },
                  )
                ]
              )
            ]
          )
      );
  }
}