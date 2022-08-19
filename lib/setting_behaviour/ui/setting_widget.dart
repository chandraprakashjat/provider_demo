import 'package:flutter/material.dart';
import 'package:provider_demo/setting_behaviour/notifier/app_setting_provider.dart';
import 'package:provider/provider.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.read<AppSettingProvider>();
    return Scaffold(
      appBar: AppBar(title: const Text('App Setting')),
      body: Column(
        children: [
          Align(
              alignment: Alignment.centerRight,
              child: Switch(
                value: context.watch<AppSettingProvider>().currentThemeIsBlack,
                onChanged: (isSelected) {
                  provider.updateTheme(isSelected);
                },
              ))
        ],
      ),
    );
  }
}
