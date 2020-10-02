import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {

  final String orderId;

  OrderScreen(this.orderId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pedido confirmado'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.check_circle_outline, color: Theme.of(context).primaryColor, size:80),
            Text('Pedido realizado com sucesso', style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18
            ),),
            Text('Código do pedido: $orderId', style: TextStyle(fontSize: 16),)
          ],
        )
      ),
    );
  }
}

/*class OrderDeliciaScreen extends StatelessWidget {

  final String orderDeliciaId;

  OrderDeliciaScreen(this.orderDeliciaId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pedido confirmado'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.check_circle_outline, color: Theme.of(context).primaryColor, size:80),
            Text('Pedido realizado com sucesso', style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18
            ),),
            Text('Código do pedido: $orderDeliciaId', style: TextStyle(fontSize: 16),)
          ],
        )
      ),
    );
  }
}

class OrderPalhocaScreen extends StatelessWidget {

  final String orderPalhocaId;

  OrderPalhocaScreen(this.orderPalhocaId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pedido confirmado'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.check_circle_outline, color: Theme.of(context).primaryColor, size:80),
            Text('Pedido realizado com sucesso', style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18
            ),),
            Text('Código do pedido: $orderPalhocaId', style: TextStyle(fontSize: 16),)
          ],
        )
      ),
    );
  }
}*/

/*class OrderPalhocaScreen extends StatelessWidget {

  final String orderPalhocaId;

  OrderPalhocacreen(this.orderPalhocaId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pedido confirmado'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.check_circle_outline, color: Theme.of(context).primaryColor, size:80),
            Text('Pedido realizado com sucesso', style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18
            ),),
            Text('Código do pedido: $orderPalhocaId', style: TextStyle(fontSize: 16),)
          ],
        )
      ),
    );
  }
}*/