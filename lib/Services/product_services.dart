import 'package:assessment/Models/products_model.dart';
import 'package:dio/dio.dart';

class ProductServices {
  static Dio dio = Dio();

  static Future<ProductModel> getService() async {
    try {
      String url = "https://student.valuxapps.com/api/home";
      var response = await dio.get(url);
      if (response.statusCode == 200) {
        return ProductModel.fromjson(response.data);
      } else {
        throw Exception("failed");
      }
    }catch(e){
      throw Exception(e.toString());
    }
  }
}