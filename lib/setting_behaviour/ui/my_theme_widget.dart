import 'package:flutter/material.dart';
import 'package:provider_demo/setting_behaviour/notifier/app_setting_provider.dart';
import 'package:provider/provider.dart';

import 'home_widget.dart';

class MyThemeWidget extends StatelessWidget {
  const MyThemeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppSettingProvider>(
        create: (_) => AppSettingProvider(),
        child: Consumer<AppSettingProvider>(builder: (context, value, child) {
          return MaterialApp(
              theme: ThemeData(
                  brightness: context.watch<AppSettingProvider>().currentTheme,
                  floatingActionButtonTheme:
                      const FloatingActionButtonThemeData(
                          foregroundColor: Colors.red,
                          backgroundColor: Colors.green)),
              home: const HomeWidget());
        }));
  }
}
