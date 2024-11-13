import 'package:assessment/Providers/product_provider.dart';
import 'package:assessment/Widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products", style: TextStyle(fontSize: 20),),
        centerTitle: true,
      ),
      body: Consumer<ProductProvider>(
          builder: (context, provider, child){
            final newProvider = provider.productModel?.data;
            if(newProvider == null){
              provider.fetchData();
              return Center(child: CircularProgressIndicator(),);
            }else{
              return GridView.builder(
                itemCount: newProvider.length,
                itemBuilder:(context, index) {
                  return ProductWidget(
                      img: provider.productModel?.data[index]["image"],
                      name: provider.productModel?.data[index]["name"],
                      price: provider.productModel?.data[index]["price"]
                  );
                } ,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2 ,
                  mainAxisSpacing: 4.0,
                  crossAxisSpacing: 4.0,
                  ),
                //semanticChildCount: 2,

              );
            }
          },
      ),
    );
  }
}
