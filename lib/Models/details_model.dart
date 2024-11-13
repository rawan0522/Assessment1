class DetailsModel{

  List data;
  DetailsModel({required this.data});
  factory DetailsModel.fromjson(Map<String,dynamic>json){
  List fullData;
  fullData = json["data"]["products"].map(
  (user){
  return{
  "image" : user["image"],
  "name" : user["name"],
  "description" : user["description"]
  };
  }
  ).toList();
  return DetailsModel(data: fullData);
  }
  }
