import 'package:flutter/cupertino.dart';
import 'package:provider_demo/setting_behaviour/notifier/app_setting_provider.dart';
import 'package:provider_demo/sibling_behaviour/my_app.dart';

import 'setting_behaviour/ui/my_theme_widget.dart';
import 'package:provider/provider.dart';

void main() {
  //sibling notifier Provider
  // runApp(const MyApp());

  //App Theme Setting // Same work for on network Change notifier

  runApp(
    const MyThemeWidget(),
  );
}
