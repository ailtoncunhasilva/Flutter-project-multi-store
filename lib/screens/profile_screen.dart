import 'package:delivery_morenope/blocs/profile_bloc.dart';
import 'package:delivery_morenope/models/user_model.dart';
import 'package:delivery_morenope/screens/login_screen.dart';
import 'package:delivery_morenope/validators/profile_validator.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  
  final UserModel model;

  ProfileScreen(this.model);

  @override
  _ProfileScreenState createState() => _ProfileScreenState(model);
}

class _ProfileScreenState extends State<ProfileScreen> with ProfileValidator{

  final ProfileBloc _profileBloc;

  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  _ProfileScreenState(model) : _profileBloc = ProfileBloc(model = model);

  @override
  Widget build(BuildContext context) {

    InputDecoration _buildInputDecoration(String label){
      return InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Theme.of(context).primaryColor),
      );
    }

    final _fieldStyle = TextStyle(
      color: Colors.black,
      fontSize: 18
    );

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Edite seu perfil'),
        centerTitle: true,
        actions: <Widget>[
          StreamBuilder<bool>(
            stream: _profileBloc.outLoading,
            initialData: false,
            builder: (context, snapshot) {
              return IconButton(
                icon: Icon(Icons.save),
                onPressed: snapshot.data ? null : saveProfile,
              );
            }
          )
        ]
      ),
      body: Stack(
        children: <Widget>[
          Form(
            key: _formKey,
            child: StreamBuilder<Map>(
              stream: _profileBloc.outData,
              builder: (context, snapshot) {
                if(!snapshot.hasData) return Container();
                return ListView(
                  padding: EdgeInsets.all(16),
                  children: <Widget>[
                    TextFormField(
                      initialValue: snapshot.data['name'],
                      style: _fieldStyle,
                      decoration: _buildInputDecoration('Nome'),
                      onSaved: _profileBloc.saveName,
                      validator: validateName,
                    ),
                    TextFormField(
                      initialValue: snapshot.data['email'],
                      style: _fieldStyle,
                      decoration: _buildInputDecoration('E-mail'),
                      onSaved: _profileBloc.saveEmail,
                      validator: validateEmail,
                    ),TextFormField(
                      initialValue: snapshot.data['phone'].toString(),
                      style: _fieldStyle,
                      decoration: _buildInputDecoration('Telefone'),
                      onSaved: _profileBloc.savePhone,
                      validator: validatePhone,
                      keyboardType: TextInputType.number,
                    ),TextFormField(
                      initialValue: snapshot.data['adress'],
                      style: _fieldStyle,
                      maxLines: 6,
                      decoration: _buildInputDecoration('Endereço c/ponto de referência'),
                      onSaved: _profileBloc.saveAdress,
                      validator: validateAdress,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Após editar o perfil e salvar, será'
                      ' necessário logar novamente para carregar as alterações',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  ],
                );
              }
            )
          ),
          StreamBuilder<bool>(
            stream: _profileBloc.outLoading,
            initialData: false,
            builder: (context, snapshot) {
              return IgnorePointer(
                ignoring: !snapshot.data,
                child: Container(
                  color: snapshot.data ? Colors.black54 : Colors.transparent
                )
              );
            }
          )
        ],
      ),
    );
  }

  void saveProfile()async{
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();

      _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text(
            'Salvando alterações do perfil...',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          duration: Duration(minutes: 1),
          backgroundColor: Colors.blueAccent,
        )
      );

      bool success = await _profileBloc.saveProfile(context);

      _scaffoldKey.currentState.removeCurrentSnackBar();

      _scaffoldKey.currentState.showSnackBar(
        SnackBar(
          content: Text(
            success ? 'Alterações de perfil salvas com sucesso!' : 'Erro ao salvar alterações de perfil',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          duration: Duration(seconds: 3),
          backgroundColor: Colors.blueAccent
        )
      );
    }
    UserModel.of(context).signOut();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => LoginScreen())
    );
  }

}