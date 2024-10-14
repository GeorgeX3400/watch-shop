import 'package:ecommerceuiapp/main.dart';
import 'package:ecommerceuiapp/pages/settings/logic/settings_provider.dart';
import 'package:ecommerceuiapp/pages/settings/logic/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text('Color Theme', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 200),
              child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
                  itemCount: colorThemes.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12),
                      child: GestureDetector(
                        onTap: () {
                          final settingsProvider = Provider.of<SettingsProvider>(context, listen: false);
                          print(colorThemes[index]['primaryColorLight']);
                          settingsProvider.setColors(colorThemes[index]['primaryColor']!, colorThemes[index]['primaryColorLight']!, colorThemes[index]['primaryColorDark']!);
                        },
                        child: Container(
                          decoration: BoxDecoration(color: colorThemes[index]['primaryColor'], shape: BoxShape.circle),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ));
  }
}
