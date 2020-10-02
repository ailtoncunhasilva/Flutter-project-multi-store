import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OrderDalenaTile extends StatelessWidget {

  final String orderDalenaId;

  OrderDalenaTile(this.orderDalenaId);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(padding: EdgeInsets.all(8),
        child: StreamBuilder<DocumentSnapshot>(
          stream: Firestore.instance.collection('ordersDalena').document(orderDalenaId).snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
            else{

              int status = snapshot.data['status'];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Código do pedido: ${snapshot.data.documentID}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    _buildProductsDalenaText(snapshot.data)
                  ),
                  SizedBox(height: 4),
                  Text('Status do Pedido',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    _buildStatus('1', 'Preparação', status, 1),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('2', 'Transporte', status, 2),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('3', 'Entrega', status, 3),
                  ],)
                ],
              );
            }
          },
        ),
      ),
    );
  }

  String _buildProductsDalenaText(DocumentSnapshot snapshot){
    String text = 'Descrição\n';
    for(LinkedHashMap p in snapshot.data['productsDalena']){
      text += '${p['quantity']} x ${p['product']['title']} (R\$ ${p['product']['price'].toStringAsFixed(2)})\n';
    }
    text += 'Total: R\$ ${snapshot.data['totalPrice'].toStringAsFixed(2)}';
    return text;
  }
}

class OrderDeliciaTile extends StatelessWidget {

  final String orderDeliciaId;

  OrderDeliciaTile(this.orderDeliciaId);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(padding: EdgeInsets.all(8),
        child: StreamBuilder<DocumentSnapshot>(
          stream: Firestore.instance.collection('ordersDelicia').document(orderDeliciaId).snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
            else{

              int status = snapshot.data['status'];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Código do pedido: ${snapshot.data.documentID}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    _buildProductsDeliciaText(snapshot.data)
                  ),
                  SizedBox(height: 4),
                  Text('Status do Pedido',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    _buildStatus('1', 'Preparação', status, 1),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('2', 'Transporte', status, 2),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('3', 'Entrega', status, 3),
                  ],)
                ],
              );
            }
          },
        ),
      ),
    );
  }

  String _buildProductsDeliciaText(DocumentSnapshot snapshot){
    String text = 'Descrição\n';
    for(LinkedHashMap p in snapshot.data['productsDelicia']){
      text += '${p['quantity']} x ${p['product']['title']} (R\$ ${p['product']['price'].toStringAsFixed(2)})\n';
    }
    text += 'Total: R\$ ${snapshot.data['totalPrice'].toStringAsFixed(2)}';
    return text;
  }
}

class OrderPalhocaTile extends StatelessWidget {

  final String orderPalhocaId;

  OrderPalhocaTile(this.orderPalhocaId);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(padding: EdgeInsets.all(8),
        child: StreamBuilder<DocumentSnapshot>(
          stream: Firestore.instance.collection('ordersPalhoca').document(orderPalhocaId).snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
            else{

              int status = snapshot.data['status'];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Código do pedido: ${snapshot.data.documentID}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    _buildProductsPalhocaText(snapshot.data)
                  ),
                  SizedBox(height: 4),
                  Text('Status do Pedido',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    _buildStatus('1', 'Preparação', status, 1),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('2', 'Transporte', status, 2),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('3', 'Entrega', status, 3),
                  ],)
                ],
              );
            }
          },
        ),
      ),
    );
  }

  String _buildProductsPalhocaText(DocumentSnapshot snapshot){
    String text = 'Descrição\n';
    for(LinkedHashMap p in snapshot.data['productsPalhoca']){
      text += '${p['quantity']} x ${p['product']['title']} (R\$ ${p['product']['price'].toStringAsFixed(2)})\n';
    }
    text += 'Total: R\$ ${snapshot.data['totalPrice'].toStringAsFixed(2)}';
    return text;
  }
}

class OrderBoticarioTile extends StatelessWidget {

  final String orderBoticarioId;

  OrderBoticarioTile(this.orderBoticarioId);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(padding: EdgeInsets.all(8),
        child: StreamBuilder<DocumentSnapshot>(
          stream: Firestore.instance.collection('ordersBoticario').document(orderBoticarioId).snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
            else{

              int status = snapshot.data['status'];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Código do pedido: ${snapshot.data.documentID}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    _buildProductsBoticarioText(snapshot.data)
                  ),
                  SizedBox(height: 4),
                  Text('Status do Pedido',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    _buildStatus('1', 'Preparação', status, 1),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('2', 'Transporte', status, 2),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('3', 'Entrega', status, 3),
                  ],)
                ],
              );
            }
          },
        ),
      ),
    );
  }

  String _buildProductsBoticarioText(DocumentSnapshot snapshot){
    String text = 'Descrição\n';
    for(LinkedHashMap p in snapshot.data['productsBoticario']){
      text += '${p['quantity']} x ${p['product']['title']} (R\$ ${p['product']['price'].toStringAsFixed(2)})\n';
    }
    text += 'Total: R\$ ${snapshot.data['totalPrice'].toStringAsFixed(2)}';
    return text;
  }
}

class OrderMinhaCoxinhaFavoritaTile extends StatelessWidget {

  final String orderMinhaCoxinhaFavoritaId;

  OrderMinhaCoxinhaFavoritaTile(this.orderMinhaCoxinhaFavoritaId);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(padding: EdgeInsets.all(8),
        child: StreamBuilder<DocumentSnapshot>(
          stream: Firestore.instance.collection('ordersMinhaCoxinhaFavorita').document(orderMinhaCoxinhaFavoritaId).snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
            else{

              int status = snapshot.data['status'];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Código do pedido: ${snapshot.data.documentID}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    _buildProductsMinhaCoxinhaFavoritaText(snapshot.data)
                  ),
                  SizedBox(height: 4),
                  Text('Status do Pedido',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    _buildStatus('1', 'Preparação', status, 1),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('2', 'Transporte', status, 2),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('3', 'Entrega', status, 3),
                  ],)
                ],
              );
            }
          },
        ),
      ),
    );
  }

  String _buildProductsMinhaCoxinhaFavoritaText(DocumentSnapshot snapshot){
    String text = 'Descrição\n';
    for(LinkedHashMap p in snapshot.data['productsMinhaCoxinhaFavorita']){
      text += '${p['quantity']} x ${p['product']['title']} (R\$ ${p['product']['price'].toStringAsFixed(2)})\n';
    }
    text += 'Total: R\$ ${snapshot.data['totalPrice'].toStringAsFixed(2)}';
    return text;
  }
}

class OrderMagoEspetinhoTile extends StatelessWidget {

  final String orderMagoEspetinhoId;

  OrderMagoEspetinhoTile(this.orderMagoEspetinhoId);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(padding: EdgeInsets.all(8),
        child: StreamBuilder<DocumentSnapshot>(
          stream: Firestore.instance.collection('ordersMagoEspetinho').document(orderMagoEspetinhoId).snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
            else{

              int status = snapshot.data['status'];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Código do pedido: ${snapshot.data.documentID}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    _buildProductsMagoEspetinhoText(snapshot.data)
                  ),
                  SizedBox(height: 4),
                  Text('Status do Pedido',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    _buildStatus('1', 'Preparação', status, 1),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('2', 'Transporte', status, 2),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('3', 'Entrega', status, 3),
                  ],)
                ],
              );
            }
          },
        ),
      ),
    );
  }

  String _buildProductsMagoEspetinhoText(DocumentSnapshot snapshot){
    String text = 'Descrição\n';
    for(LinkedHashMap p in snapshot.data['productsMagoEspetinho']){
      text += '${p['quantity']} x ${p['product']['title']} (R\$ ${p['product']['price'].toStringAsFixed(2)})\n';
    }
    text += 'Total: R\$ ${snapshot.data['totalPrice'].toStringAsFixed(2)}';
    return text;
  }
}

class OrderDindinTile extends StatelessWidget {

  final String orderDindinId;

  OrderDindinTile(this.orderDindinId);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(padding: EdgeInsets.all(8),
        child: StreamBuilder<DocumentSnapshot>(
          stream: Firestore.instance.collection('ordersDindin').document(orderDindinId).snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
            else{

              int status = snapshot.data['status'];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Código do pedido: ${snapshot.data.documentID}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    _buildProductsDindinText(snapshot.data)
                  ),
                  SizedBox(height: 4),
                  Text('Status do Pedido',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    _buildStatus('1', 'Preparação', status, 1),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('2', 'Transporte', status, 2),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('3', 'Entrega', status, 3),
                  ],)
                ],
              );
            }
          },
        ),
      ),
    );
  }

  String _buildProductsDindinText(DocumentSnapshot snapshot){
    String text = 'Descrição\n';
    for(LinkedHashMap p in snapshot.data['productsDindin']){
      text += '${p['quantity']} x ${p['product']['title']} (R\$ ${p['product']['price'].toStringAsFixed(2)})\n';
    }
    text += 'Total: R\$ ${snapshot.data['totalPrice'].toStringAsFixed(2)}';
    return text;
  }
}

class OrderLeChefTile extends StatelessWidget {

  final String orderLeChefId;

  OrderLeChefTile(this.orderLeChefId);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(padding: EdgeInsets.all(8),
        child: StreamBuilder<DocumentSnapshot>(
          stream: Firestore.instance.collection('ordersLeChef').document(orderLeChefId).snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
            else{

              int status = snapshot.data['status'];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Código do pedido: ${snapshot.data.documentID}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    _buildProductsLeChefText(snapshot.data)
                  ),
                  SizedBox(height: 4),
                  Text('Status do Pedido',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    _buildStatus('1', 'Preparação', status, 1),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('2', 'Transporte', status, 2),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('3', 'Entrega', status, 3),
                  ],)
                ],
              );
            }
          },
        ),
      ),
    );
  }

  String _buildProductsLeChefText(DocumentSnapshot snapshot){
    String text = 'Descrição\n';
    for(LinkedHashMap p in snapshot.data['productsLeChef']){
      text += '${p['quantity']} x ${p['product']['title']} (R\$ ${p['product']['price'].toStringAsFixed(2)})\n';
    }
    text += 'Total: R\$ ${snapshot.data['totalPrice'].toStringAsFixed(2)}';
    return text;
  }
}

class OrderPizzaMaitaTile extends StatelessWidget {

  final String orderPizzaMaitaId;

  OrderPizzaMaitaTile(this.orderPizzaMaitaId);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(padding: EdgeInsets.all(8),
        child: StreamBuilder<DocumentSnapshot>(
          stream: Firestore.instance.collection('ordersPizzaMaita').document(orderPizzaMaitaId).snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
            else{

              int status = snapshot.data['status'];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Código do pedido: ${snapshot.data.documentID}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    _buildProductsPizzaMaitaText(snapshot.data)
                  ),
                  SizedBox(height: 4),
                  Text('Status do Pedido',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    _buildStatus('1', 'Preparação', status, 1),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('2', 'Transporte', status, 2),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('3', 'Entrega', status, 3),
                  ],)
                ],
              );
            }
          },
        ),
      ),
    );
  }

  String _buildProductsPizzaMaitaText(DocumentSnapshot snapshot){
    String text = 'Descrição\n';
    for(LinkedHashMap p in snapshot.data['productsPizzaMaita']){
      text += '${p['quantity']} x ${p['product']['title']} (R\$ ${p['product']['price'].toStringAsFixed(2)})\n';
    }
    text += 'Total: R\$ ${snapshot.data['totalPrice'].toStringAsFixed(2)}';
    return text;
  }
}

class OrderLojaJTile extends StatelessWidget {

  final String orderLojaJId;

  OrderLojaJTile(this.orderLojaJId);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(padding: EdgeInsets.all(8),
        child: StreamBuilder<DocumentSnapshot>(
          stream: Firestore.instance.collection('ordersLojaJ').document(orderLojaJId).snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
            else{

              int status = snapshot.data['status'];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Código do pedido: ${snapshot.data.documentID}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    _buildProductsLojaJText(snapshot.data)
                  ),
                  SizedBox(height: 4),
                  Text('Status do Pedido',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    _buildStatus('1', 'Preparação', status, 1),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('2', 'Transporte', status, 2),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('3', 'Entrega', status, 3),
                  ],)
                ],
              );
            }
          },
        ),
      ),
    );
  }

  String _buildProductsLojaJText(DocumentSnapshot snapshot){
    String text = 'Descrição\n';
    for(LinkedHashMap p in snapshot.data['productsLojaJ']){
      text += '${p['quantity']} x ${p['product']['title']} (R\$ ${p['product']['price'].toStringAsFixed(2)})\n';
    }
    text += 'Total: R\$ ${snapshot.data['totalPrice'].toStringAsFixed(2)}';
    return text;
  }
}

class OrderLojaLTile extends StatelessWidget {

  final String orderLojaLId;

  OrderLojaLTile(this.orderLojaLId);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(padding: EdgeInsets.all(8),
        child: StreamBuilder<DocumentSnapshot>(
          stream: Firestore.instance.collection('ordersLojaL').document(orderLojaLId).snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
            else{

              int status = snapshot.data['status'];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Código do pedido: ${snapshot.data.documentID}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    _buildProductsLojaLText(snapshot.data)
                  ),
                  SizedBox(height: 4),
                  Text('Status do Pedido',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    _buildStatus('1', 'Preparação', status, 1),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('2', 'Transporte', status, 2),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('3', 'Entrega', status, 3),
                  ],)
                ],
              );
            }
          },
        ),
      ),
    );
  }

  String _buildProductsLojaLText(DocumentSnapshot snapshot){
    String text = 'Descrição\n';
    for(LinkedHashMap p in snapshot.data['productsLojaL']){
      text += '${p['quantity']} x ${p['product']['title']} (R\$ ${p['product']['price'].toStringAsFixed(2)})\n';
    }
    text += 'Total: R\$ ${snapshot.data['totalPrice'].toStringAsFixed(2)}';
    return text;
  }
}

class OrderLojaMTile extends StatelessWidget {

  final String orderLojaMId;

  OrderLojaMTile(this.orderLojaMId);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(padding: EdgeInsets.all(8),
        child: StreamBuilder<DocumentSnapshot>(
          stream: Firestore.instance.collection('ordersLojaM').document(orderLojaMId).snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
            else{

              int status = snapshot.data['status'];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Código do pedido: ${snapshot.data.documentID}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    _buildProductsLojaMText(snapshot.data)
                  ),
                  SizedBox(height: 4),
                  Text('Status do Pedido',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    _buildStatus('1', 'Preparação', status, 1),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('2', 'Transporte', status, 2),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('3', 'Entrega', status, 3),
                  ],)
                ],
              );
            }
          },
        ),
      ),
    );
  }

  String _buildProductsLojaMText(DocumentSnapshot snapshot){
    String text = 'Descrição\n';
    for(LinkedHashMap p in snapshot.data['productsLojaM']){
      text += '${p['quantity']} x ${p['product']['title']} (R\$ ${p['product']['price'].toStringAsFixed(2)})\n';
    }
    text += 'Total: R\$ ${snapshot.data['totalPrice'].toStringAsFixed(2)}';
    return text;
  }
}

class OrderLojaNTile extends StatelessWidget {

  final String orderLojaNId;

  OrderLojaNTile(this.orderLojaNId);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(padding: EdgeInsets.all(8),
        child: StreamBuilder<DocumentSnapshot>(
          stream: Firestore.instance.collection('ordersLojaN').document(orderLojaNId).snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
            else{

              int status = snapshot.data['status'];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Código do pedido: ${snapshot.data.documentID}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    _buildProductsLojaNText(snapshot.data)
                  ),
                  SizedBox(height: 4),
                  Text('Status do Pedido',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    _buildStatus('1', 'Preparação', status, 1),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('2', 'Transporte', status, 2),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('3', 'Entrega', status, 3),
                  ],)
                ],
              );
            }
          },
        ),
      ),
    );
  }

  String _buildProductsLojaNText(DocumentSnapshot snapshot){
    String text = 'Descrição\n';
    for(LinkedHashMap p in snapshot.data['productsLojaN']){
      text += '${p['quantity']} x ${p['product']['title']} (R\$ ${p['product']['price'].toStringAsFixed(2)})\n';
    }
    text += 'Total: R\$ ${snapshot.data['totalPrice'].toStringAsFixed(2)}';
    return text;
  }
}

class OrderLojaOTile extends StatelessWidget {

  final String orderLojaOId;

  OrderLojaOTile(this.orderLojaOId);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(padding: EdgeInsets.all(8),
        child: StreamBuilder<DocumentSnapshot>(
          stream: Firestore.instance.collection('ordersLojaO').document(orderLojaOId).snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
            else{

              int status = snapshot.data['status'];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Código do pedido: ${snapshot.data.documentID}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    _buildProductsLojaOText(snapshot.data)
                  ),
                  SizedBox(height: 4),
                  Text('Status do Pedido',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    _buildStatus('1', 'Preparação', status, 1),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('2', 'Transporte', status, 2),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('3', 'Entrega', status, 3),
                  ],)
                ],
              );
            }
          },
        ),
      ),
    );
  }

  String _buildProductsLojaOText(DocumentSnapshot snapshot){
    String text = 'Descrição\n';
    for(LinkedHashMap p in snapshot.data['productsLojaO']){
      text += '${p['quantity']} x ${p['product']['title']} (R\$ ${p['product']['price'].toStringAsFixed(2)})\n';
    }
    text += 'Total: R\$ ${snapshot.data['totalPrice'].toStringAsFixed(2)}';
    return text;
  }
}

class OrderLojaPTile extends StatelessWidget {

  final String orderLojaPId;

  OrderLojaPTile(this.orderLojaPId);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Padding(padding: EdgeInsets.all(8),
        child: StreamBuilder<DocumentSnapshot>(
          stream: Firestore.instance.collection('ordersLojaP').document(orderLojaPId).snapshots(),
          builder: (context, snapshot){
            if(!snapshot.hasData)
            return Center(child: CircularProgressIndicator());
            else{

              int status = snapshot.data['status'];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Código do pedido: ${snapshot.data.documentID}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    _buildProductsLojaPText(snapshot.data)
                  ),
                  SizedBox(height: 4),
                  Text('Status do Pedido',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                    _buildStatus('1', 'Preparação', status, 1),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('2', 'Transporte', status, 2),
                    Container(height: 1, width: 40, color: Colors.grey[500],),
                    _buildStatus('3', 'Entrega', status, 3),
                  ],)
                ],
              );
            }
          },
        ),
      ),
    );
  }

  String _buildProductsLojaPText(DocumentSnapshot snapshot){
    String text = 'Descrição\n';
    for(LinkedHashMap p in snapshot.data['productsLojaP']){
      text += '${p['quantity']} x ${p['product']['title']} (R\$ ${p['product']['price'].toStringAsFixed(2)})\n';
    }
    text += 'Total: R\$ ${snapshot.data['totalPrice'].toStringAsFixed(2)}';
    return text;
  }
}

Widget _buildStatus(String title, String subtitle, int status, int thisStatus){

  Color backColor;
  Widget child;

  if(status < thisStatus){
    backColor = Colors.grey[500];
    child = Text(title, style: TextStyle(color: Colors.white),);
  }
  else if(status == thisStatus){
    backColor = Colors.blue;
    child = Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Text(title, style: TextStyle(color: Colors.white)),
        CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        )
      ],
    );
  }
  else{
    backColor = Colors.green;
    child = Icon(Icons.check, color: Colors.white);
  }

  return Column(
    children: <Widget>[
      CircleAvatar(
        radius: 20,
        backgroundColor: backColor,
        child: child
      ),
      Text(subtitle)
    ],
  );

}