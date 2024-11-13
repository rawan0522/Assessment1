import 'package:assessment/Services/regestration_service.dart';
import 'package:flutter/material.dart';
import '../Models/login_model.dart';

class RegistrationProvider extends ChangeNotifier{

  LoginModel? loginData;
  Future signUp(LoginModel loginModel) async
  {
    loginData = await RegestrationServices.signUp(loginModel);
    notifyListeners();
  }
}