
class LoginModel{
  Map<String, dynamic>? data;
  bool? status;
  LoginModel({required this.data,this.status});
  factory LoginModel.fromJson(Map<String, dynamic> json)
  {
    return LoginModel(data: json["data"],status: json["status"]);
  }
  static Map<String, dynamic>? toJson(LoginModel loginModel)
  {
    return loginModel.data;
  }

}