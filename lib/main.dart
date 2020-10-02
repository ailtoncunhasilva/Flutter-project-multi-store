import 'package:delivery_morenope/models/cart_model.dart';
import 'package:delivery_morenope/models/user_model.dart';
import 'package:delivery_morenope/tabs/home_page.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: ScopedModelDescendant<UserModel>(
        builder: (context, chil, model){
          return  ScopedModel<CartModel>(
          model: CartModel(model),
          child: MaterialApp(
            title: 'Delivery Moreno-PE',
            theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Colors.lightBlue[900]
          ),
          home: HomePage(),
          debugShowCheckedModeBanner: false,
          ),
         );
        }
      ),
    );
  }
}

