import 'package:assessment/Models/login_model.dart';
import 'package:assessment/Models/registeration.dart';
import 'package:assessment/Services/login_service.dart';
import 'package:assessment/Services/regestration_service.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier{
  LoginModel? loginData;
  login(LoginModel loginModel) async
  {
    loginData = await LoginService.login(loginModel);
    notifyListeners();
  }
}