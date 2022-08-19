import 'package:flutter/material.dart';

import '../state_notifier/user_detail_provider.dart';
import 'package:provider/provider.dart' show Consumer;

class NameWidget extends StatelessWidget {
  const NameWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<UserDetailProvider>(
      builder: (context, value, child) {
        return Text('User Name : ${value.name}');
      },
    );
  }
}
