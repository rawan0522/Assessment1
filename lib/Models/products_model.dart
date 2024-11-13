class ProductModel{
  List data;
  ProductModel({required this.data});
  factory ProductModel.fromjson(Map<String,dynamic>json){
   List fullData;
   fullData = json["data"]["products"].map(
       (user){
         return{
           "image" : user["image"],
           "name" : user["name"],
           "price" : user["price"]
         };
       }
   ).toList();
   return ProductModel(data: fullData);
  }
}