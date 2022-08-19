import 'package:flutter/cupertino.dart';

class UserDetailProvider extends ChangeNotifier {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();

  String _userName = '';
  int _userAge = 0;

  String get name => _userName;
  int get age => _userAge;

  void updateUserName(String userName) {
    _userName = userName;
    notifyListeners();
  }

  void updateUserAge(int age) {
    _userAge = age;
    notifyListeners();
  }
}
