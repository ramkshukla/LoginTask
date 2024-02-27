import 'package:flutter/material.dart';

abstract class LoginEvent {
  LoginEvent();
}

class UserLoginEvent extends LoginEvent {
  final BuildContext context;
  UserLoginEvent({required this.context});
}
