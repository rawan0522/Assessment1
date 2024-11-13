import 'package:assessment/Models/login_model.dart';
import 'package:dio/dio.dart';

class RegestrationServices{
  static Dio dio = Dio();
  static Future<LoginModel> signUp(LoginModel loginModel) async
  {
    String url = "https://student.valuxapps.com/api/register";
    var response = await dio.post(url,data: LoginModel.toJson(loginModel));
    return LoginModel.fromJson(response.data);
  }
  }
