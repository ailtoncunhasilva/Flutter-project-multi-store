import 'package:delivery_morenope/models/user_model.dart';
import 'package:delivery_morenope/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          'Faça Login', style: TextStyle(
            fontSize: 18,
            color: Colors.white
          )
        ),
        centerTitle: true,
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => SignupScreen())
              );
            }, 
            child: Text(
              'CRIAR\nCONTA', style: TextStyle(
                fontSize: 15,
                color: Colors.white
              ),
            ),
          )
        ],
      ),
      body: ScopedModelDescendant<UserModel>(
        builder: (context, child, model){
          if(model.isLoading)
          return Center(child: CircularProgressIndicator());

          return Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(16),
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'E-mail'
                ),
                keyboardType: TextInputType.emailAddress,
                // ignore: missing_return
                validator: (text){
                  if(text.isEmpty || !text.contains('@')) return 'E-mail Inválido!';
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: _passController,
                decoration: InputDecoration(
                  hintText: 'Senha'
                ),
                obscureText: true,
                // ignore: missing_return
                validator: (text){
                  if(text.isEmpty || text.length < 6) return 'Senha Inválida';
                },
              ),
              Align(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: (){
                    if(_emailController.text.isEmpty)
                      _scaffoldKey.currentState.showSnackBar(
                      SnackBar(content: Text('Insira seu e-mail para recuperação!'),
                      backgroundColor: Colors.redAccent,
                      duration: Duration(seconds: 2)
                       )
                      );
                    else{
                      model.recoverPass(_emailController.text);
                      _scaffoldKey.currentState.showSnackBar(
                      SnackBar(content: Text('Confira seu e-mail!'),
                      backgroundColor: Theme.of(context).primaryColor,
                      duration: Duration(seconds: 2)
                      )
                     );
                    }
                  },
                  child: Text(
                    'Esqueci Minha Senha',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16
                    ),
                  ),
                  padding: EdgeInsets.zero,
                )
              ),
              SizedBox(height: 16),
              SizedBox(
                height: 44,
                child: RaisedButton(
                  onPressed: (){
                    if(_formKey.currentState.validate()){

                    }
                    model.signIn(
                      email: _emailController.text,
                      pass: _passController.text,
                      onSucess: _onSucess,
                      onFail: _onFail

                    );
                  },
                  child: Text(
                    'Entrar',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white
                    ),
                  ),
                  color: Theme.of(context).primaryColor,
                )
              )
            ],
          )
        );  
      }
    )    
  );
  }

  void _onSucess(){
    Navigator.of(context).pop();
  }

  void _onFail(){
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(content: Text('Falha ao Entrar!'),
      backgroundColor: Colors.redAccent,
      duration: Duration(seconds: 2)
      )
    );
  }

}