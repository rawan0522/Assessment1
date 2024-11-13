import 'package:assessment/Providers/detail_provider.dart';
import 'package:assessment/Widgets/detail_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Product Detail", style: TextStyle(fontSize: 20),),
          centerTitle: true,
      ),
      body: Consumer<DetailsProvider>(
          builder: (context, provider, child){
            final newProvider = provider.detailsModel?.data;
            if(newProvider == null){
              provider.fetchData();
              return Center(child: CircularProgressIndicator(),);
            }else{
              return Container(
                    child:  DetailWidget(
                        img: provider.detailsModel?.data[0]["image"],
                        name: provider.detailsModel?.data[0]["name"],
                        descrebtion: provider.detailsModel?.data[0]["description"]
                    )

              );}
          },
      ),
    );
  }
}
