import 'package:assessment/Providers/detail_provider.dart';
import 'package:assessment/Providers/login_provider.dart';
import 'package:assessment/Providers/product_provider.dart';
import 'package:assessment/Providers/registration_provider.dart';
import 'package:assessment/Screens/product_screen.dart';
import 'package:assessment/Screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
     providers: [
       ChangeNotifierProvider(create: (context) => RegistrationProvider(),),
       ChangeNotifierProvider(create: (context) => LoginProvider(),),
       ChangeNotifierProvider(create: (context) => ProductProvider(),),
       ChangeNotifierProvider(create: (context) => DetailsProvider(),),
     ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProductScreen(),
      ),
    );
  }
}
