import 'package:delivery_morenope/screens/login_screen.dart';
import 'package:flutter/material.dart';

class UpdateProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atualização de perfil'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.remove_shopping_cart,
                size: 80, color: Theme.of(context).primaryColor),
            SizedBox(height: 16),
            Text(
              'Faça login novamente para ver as mudanças do perfil',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
              child: Text('Entrar',
                  style: TextStyle(fontSize: 18, color: Colors.white)),
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      ),
    );
  }
}
