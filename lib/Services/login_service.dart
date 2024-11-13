import 'package:assessment/Models/login_model.dart';
import 'package:dio/dio.dart';

class LoginService{
  static Dio dio = Dio();
  static Future<LoginModel> login(LoginModel loginModel) async
  {
    String url = "https://student.valuxapps.com/api/login";
    try
    {
      var response = await dio.post(url,data: LoginModel.toJson(loginModel));
      return LoginModel.fromJson(response.data);
    }
    catch (e)
    {
      throw Exception(e.toString());
    }
  }
}