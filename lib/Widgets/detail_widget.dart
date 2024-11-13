import 'package:flutter/material.dart';
class DetailWidget extends StatelessWidget {
   DetailWidget({super.key , required this.img , required this.name,required this.descrebtion});
  String img;
  String name;
  String descrebtion;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shadowColor: Colors.black,
        elevation: 8,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(img),
                  radius: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(name ,style: TextStyle(fontSize: 12 , fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(descrebtion ,style: TextStyle(fontSize: 8 , ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
