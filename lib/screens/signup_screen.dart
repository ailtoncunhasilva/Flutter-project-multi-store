import 'package:delivery_morenope/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _phoneController = TextEditingController();
  final _adressController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(
          'Criar Conta', style: TextStyle(
            fontSize: 18,
            color: Colors.white
          )
        ),
        centerTitle: true,
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
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Nome'
              ),
              // ignore: missing_return
              validator: (text){
                if(text.isEmpty) return 'Nome Inválido!';
              },
            ),
            SizedBox(height: 16),
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
            SizedBox(height: 16),
            TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(
                hintText: 'Telefone'
              ),
              // ignore: missing_return
              validator: (text){
                if(text.isEmpty || text.length < 9) return 'Fone Inválido!';
              },
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _adressController,
              decoration: InputDecoration(
                hintText: 'Endereço c/ponto de referência'
              ),
              maxLines: 4,
              // ignore: missing_return
              validator: (text){
                if(text.isEmpty) return 'Endereço Inválido!';
              },
            ),
            SizedBox(height: 16),
            SizedBox(
              height: 44,
              child: RaisedButton(
                onPressed: (){
                  if(_formKey.currentState.validate()){
                    
                    Map<String, dynamic> userData = {
                      'name': _nameController.text,
                      'email': _emailController.text,
                      'phone': _phoneController.text,
                      'adress': _adressController.text
                    };
                    
                    model.signUp(
                      userData: userData, 
                      pass: _passController.text, 
                      onSuccess: _onSucess, 
                      onFail: _onFail
                    );
                  }
                },
                child: Text(
                  'Criar Conta',
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
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(content: Text('Usuário criado com sucesso!'),
      backgroundColor: Theme.of(context).primaryColor,
      duration: Duration(seconds: 2)
      )
    );
    Future.delayed(Duration(seconds: 2)).then((_){
      Navigator.of(context).pop();
    });
  }

  void _onFail(){
    _scaffoldKey.currentState.showSnackBar(
      SnackBar(content: Text('Falha ao criar usuário!'),
      backgroundColor: Colors.redAccent,
      duration: Duration(seconds: 2)
      )
    );
  }
}