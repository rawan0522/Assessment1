
import 'package:assessment/Models/details_model.dart';
import 'package:assessment/Services/details_service.dart';
import 'package:flutter/cupertino.dart';

class DetailsProvider extends ChangeNotifier{
  DetailsModel? detailsModel;
  Future<void>fetchData() async{
    detailsModel = await DetailsServices.getService();
    notifyListeners();
  }
}