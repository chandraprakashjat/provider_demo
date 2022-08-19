import 'package:flutter/material.dart';
import 'package:provider_demo/sibling_behaviour/state_notifier/user_detail_provider.dart';

import 'ui/modifier_widget.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ChangeNotifierProvider<UserDetailProvider>(
            create: (_) => UserDetailProvider(),
            child: const UserModifyWidget()));
  }
}
