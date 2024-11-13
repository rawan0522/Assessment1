import 'package:assessment/Screens/detail_screen.dart';
import 'package:flutter/material.dart';
class ProductWidget extends StatelessWidget {
   ProductWidget({super.key , required this.img ,required this.name ,required this.price});
String img;
String name;
var price;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(),));
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage(img),
                radius: 50,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(name ,style: TextStyle(fontSize: 12 , fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text("$price" ,style: TextStyle(fontSize: 10 , ),),
          ),
        ],
      ),
    );
  }
}
