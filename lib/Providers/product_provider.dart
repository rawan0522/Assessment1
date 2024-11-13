import 'package:assessment/Models/products_model.dart';
import 'package:assessment/Services/product_services.dart';
import 'package:flutter/foundation.dart';

class ProductProvider extends ChangeNotifier{

 ProductModel? productModel;
  Future<void>fetchData() async{
    productModel = await ProductServices.getService();
  notifyListeners();
  }

}