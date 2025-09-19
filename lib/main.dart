import 'package:demo_app/src/features/user/data/user_service.dart';
import 'package:flutter/cupertino.dart';

void main() {
  UserService userService = UserService();
  debugPrint(userService.getUserName());
}
