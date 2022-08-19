import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../state_notifier/user_detail_provider.dart';
import 'age_widget.dart';
import 'name_widget.dart';

class UserModifyWidget extends StatelessWidget {
  const UserModifyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.read<UserDetailProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('UserDetail Page')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              const NameWidget(),
              const AgeWidget(),
              TextField(
                decoration: const InputDecoration(labelText: 'User Name'),
                keyboardType: TextInputType.name,
                onChanged: (name) => provider.updateUserName(name),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
                onChanged: (age) => provider.updateUserAge(int.parse(age)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
