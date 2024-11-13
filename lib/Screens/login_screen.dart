import 'package:assessment/Models/login_model.dart';
import 'package:assessment/Screens/product_screen.dart';
import 'package:assessment/Screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/login_provider.dart';
class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();
final formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LoginProvider>(context, listen:false );

    return Scaffold(
    appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Login" , style: TextStyle(fontSize: 20),),
        centerTitle: true,
        actions: [
          Icon(Icons.settings),
        ],
      ),
      body: Center(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Container(
               width: 200,
               child: CircleAvatar(
                 backgroundImage: AssetImage("pics/cart.png" ),
                  radius: 100,
               ),
             ),
              TextFormField(
                decoration: InputDecoration(
                    label: Text("email"),
                    icon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(
                    label: Text("password"),
                    icon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),SizedBox(height: 10,),
              MaterialButton(onPressed: ()async {
                if(formkey.currentState!.validate()){
                  await provider.login(LoginModel(data: {"email" : email.text, "password" : password.text}));
                  if(provider.loginData?.status == true){
                    print("founded");
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(),));
                  }else{
                    print("invalid data");
                  }
                }
              },child: Text("Login"), ),
              TextButton(onPressed: (){
                Navigator.pop(context, MaterialPageRoute(builder: (context) => RegistrationScreen(),));
              }, child: Text("Sign up")),
            ],
          ),
        ),
      ),
    );
  }
}
