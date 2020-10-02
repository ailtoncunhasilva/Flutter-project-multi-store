import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_morenope/models/user_model.dart';
import 'package:delivery_morenope/screens/login_screen.dart';
import 'package:delivery_morenope/tiles/order_tile.dart';
import 'package:flutter/material.dart';

class OrdersDalenaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    if(UserModel.of(context).isLoggedIn()){

      String uid = UserModel.of(context).firebaseUser.uid;

      return FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection('users').document(uid).collection('ordersDalena')
          .getDocuments(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          else{
            return ListView(
              children: snapshot.data.documents.map((doc) => OrderDalenaTile(doc.documentID)).toList()
            );
          }
        },
      );
    }
    else{
      return _noLoggedIn(context);
    }
  }
}

class OrdersDeliciaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    if(UserModel.of(context).isLoggedIn()){

      String uid = UserModel.of(context).firebaseUser.uid;

      return FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection('users').document(uid).collection('ordersDelicia')
          .getDocuments(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
          return Center(child: CircularProgressIndicator());
          else{
            return ListView(
              children: snapshot.data.documents.map((doc) => OrderDeliciaTile(doc.documentID)).toList()
            );
          }
        },
      );

    }
    else if(UserModel.of(context).isLoggedIn() && OrderDeliciaTile == null){
      return Container();
    }
    else{
      return _noLoggedIn(context);
    }
  }
}

class OrdersPalhocaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    if(UserModel.of(context).isLoggedIn()){

      String uid = UserModel.of(context).firebaseUser.uid;

      return FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection('users').document(uid).collection('ordersPalhoca')
          .getDocuments(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          else{
            return ListView(
              children: snapshot.data.documents.map((doc) => OrderPalhocaTile(doc.documentID)).toList()
            );
          }
        },
      );
    }
    else{
      return _noLoggedIn(context);
    }
  }
}

class OrdersBoticarioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    if(UserModel.of(context).isLoggedIn()){

      String uid = UserModel.of(context).firebaseUser.uid;

      return FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection('users').document(uid).collection('ordersBoticario')
          .getDocuments(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          else{
            return ListView(
              children: snapshot.data.documents.map((doc) => OrderBoticarioTile(doc.documentID)).toList()
            );
          }
        },
      );
    }
    else{
      return _noLoggedIn(context);
    }
  }
}

class OrdersMinhaCoxinhaFavoritaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    if(UserModel.of(context).isLoggedIn()){

      String uid = UserModel.of(context).firebaseUser.uid;

      return FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection('users').document(uid).collection('ordersMinhaCoxinhaFavorita')
          .getDocuments(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          else{
            return ListView(
              children: snapshot.data.documents.map((doc) => OrderMinhaCoxinhaFavoritaTile(doc.documentID)).toList()
            );
          }
        },
      );
    }
    else{
      return _noLoggedIn(context);
    }
  }
}

class OrdersMagoEspetinhoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    if(UserModel.of(context).isLoggedIn()){

      String uid = UserModel.of(context).firebaseUser.uid;

      return FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection('users').document(uid).collection('ordersMagoEspetinho')
          .getDocuments(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          else{
            return ListView(
              children: snapshot.data.documents.map((doc) => OrderMagoEspetinhoTile(doc.documentID)).toList()
            );
          }
        },
      );
    }
    else{
      return _noLoggedIn(context);
    }
  }
}

class OrdersDindinTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    if(UserModel.of(context).isLoggedIn()){

      String uid = UserModel.of(context).firebaseUser.uid;

      return FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection('users').document(uid).collection('ordersDindin')
          .getDocuments(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          else{
            return ListView(
              children: snapshot.data.documents.map((doc) => OrderDindinTile(doc.documentID)).toList()
            );
          }
        },
      );
    }
    else{
      return _noLoggedIn(context);
    }
  }
}

class OrdersLeChefTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    if(UserModel.of(context).isLoggedIn()){

      String uid = UserModel.of(context).firebaseUser.uid;

      return FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection('users').document(uid).collection('ordersLeChef')
          .getDocuments(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          else{
            return ListView(
              children: snapshot.data.documents.map((doc) => OrderLeChefTile(doc.documentID)).toList()
            );
          }
        },
      );
    }
    else{
      return _noLoggedIn(context);
    }
  }
}

class OrdersPizzaMaitaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    if(UserModel.of(context).isLoggedIn()){

      String uid = UserModel.of(context).firebaseUser.uid;

      return FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection('users').document(uid).collection('ordersPizzaMaita')
          .getDocuments(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          else{
            return ListView(
              children: snapshot.data.documents.map((doc) => OrderPizzaMaitaTile(doc.documentID)).toList()
            );
          }
        },
      );
    }
    else{
      return _noLoggedIn(context);
    }
  }
}

class OrdersLojaJTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    if(UserModel.of(context).isLoggedIn()){

      String uid = UserModel.of(context).firebaseUser.uid;

      return FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection('users').document(uid).collection('ordersLojaJ')
          .getDocuments(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          else{
            return ListView(
              children: snapshot.data.documents.map((doc) => OrderLojaJTile(doc.documentID)).toList()
            );
          }
        },
      );
    }
    else{
      return _noLoggedIn(context);
    }
  }
}

class OrdersLojaLTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    if(UserModel.of(context).isLoggedIn()){

      String uid = UserModel.of(context).firebaseUser.uid;

      return FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection('users').document(uid).collection('ordersLojaL')
          .getDocuments(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          else{
            return ListView(
              children: snapshot.data.documents.map((doc) => OrderLojaLTile(doc.documentID)).toList()
            );
          }
        },
      );
    }
    else{
      return _noLoggedIn(context);
    }
  }
}

class OrdersLojaMTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    if(UserModel.of(context).isLoggedIn()){

      String uid = UserModel.of(context).firebaseUser.uid;

      return FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection('users').document(uid).collection('ordersLojaM')
          .getDocuments(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          else{
            return ListView(
              children: snapshot.data.documents.map((doc) => OrderLojaMTile(doc.documentID)).toList()
            );
          }
        },
      );
    }
    else{
      return _noLoggedIn(context);
    }
  }
}

class OrdersLojaNTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    if(UserModel.of(context).isLoggedIn()){

      String uid = UserModel.of(context).firebaseUser.uid;

      return FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection('users').document(uid).collection('ordersLojaN')
          .getDocuments(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          else{
            return ListView(
              children: snapshot.data.documents.map((doc) => OrderLojaNTile(doc.documentID)).toList()
            );
          }
        },
      );
    }
    else{
      return _noLoggedIn(context);
    }
  }
}

class OrdersLojaOTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    if(UserModel.of(context).isLoggedIn()){

      String uid = UserModel.of(context).firebaseUser.uid;

      return FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection('users').document(uid).collection('ordersLojaO')
          .getDocuments(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          else{
            return ListView(
              children: snapshot.data.documents.map((doc) => OrderLojaOTile(doc.documentID)).toList()
            );
          }
        },
      );
    }
    else{
      return _noLoggedIn(context);
    }
  }
}

class OrdersLojaPTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    if(UserModel.of(context).isLoggedIn()){

      String uid = UserModel.of(context).firebaseUser.uid;

      return FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection('users').document(uid).collection('ordersLojaP')
          .getDocuments(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
          else{
            return ListView(
              children: snapshot.data.documents.map((doc) => OrderLojaPTile(doc.documentID)).toList()
            );
          }
        },
      );
    }
    else{
      return _noLoggedIn(context);
    }
  }
}

Widget _noLoggedIn(BuildContext context){
  return Container(
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.view_list, 
          size: 80,
          color: Theme.of(context).primaryColor
        ),
        SizedBox(height: 16),
        Text(
          'Faça o login para acompanhar seus pedidos',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        RaisedButton(
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => LoginScreen())
            );
          },
          child: Text(
            'Entrar', 
            style: TextStyle(
              fontSize: 18,
              color: Colors.white
            )
          ),
          color: Theme.of(context).primaryColor,
        )
      ],
    ),
  );
}

/*Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.view_list, 
              size: 80,
              color: Theme.of(context).primaryColor
            ),
            SizedBox(height: 16),
            Text(
              'Faça o login para acompanhar seus pedidos',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            RaisedButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LoginScreen())
                );
              },
              child: Text(
                'Entrar', 
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white
                )
              ),
              color: Theme.of(context).primaryColor,
            )
          ],
        ),
      );*/