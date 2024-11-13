import 'package:assessment/Models/details_model.dart';
import 'package:dio/dio.dart';
class DetailsServices{
  static Dio dio = Dio();

  static Future<DetailsModel> getService() async {
  try {
  String url = "https://student.valuxapps.com/api/home";
  var response = await dio.get(url);
  if (response.statusCode == 200) {
  return DetailsModel.fromjson(response.data);
  } else {
  throw Exception("failed");
  }
  }catch(e){
  throw Exception(e.toString());
  }
  }

}