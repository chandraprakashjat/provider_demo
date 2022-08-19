import 'package:flutter/material.dart';

import '../state_notifier/user_detail_provider.dart';
import 'package:provider/provider.dart';

class AgeWidget extends StatelessWidget {
  const AgeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(' User Age :${context.watch<UserDetailProvider>().age}');
  }
}
