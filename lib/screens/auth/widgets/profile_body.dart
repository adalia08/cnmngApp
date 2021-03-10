import 'package:cnmngroup/screens/auth/widgets/contactinfo.dart';
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
          body: Container(
          child: Padding(
            // I set the padding here to only the top, you can increase the double (16.0) to suit exactly what you're looking to achieve visually
              padding: EdgeInsets.only(top: 19.0),
              child:   SettingsList(
                backgroundColor: Colors.white,
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
                  ]
                  ),
              SettingsSection(
                title: 'Settings',
              tiles: [
                  SettingsTile(
                      title: 'Log out',
                    leading: Icon(Icons.login_outlined),
                    onTap: () {
                        context.signOut();
                        Navigator.of(context).push(AuthScreen.route);
                      },
                  ),
                  SettingsTile(
                  title: 'Contact Info',
                  leading: Icon(Icons.phone),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => ContactInfo()));
                    },
                )
                ]
              )
            ]
          )

          )
          )
      );
  }
}