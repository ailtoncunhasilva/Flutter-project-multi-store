import 'package:delivery_morenope/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class CartDalenaPrice extends StatelessWidget {
  final VoidCallback buy;

  CartDalenaPrice(this.buy);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          padding: EdgeInsets.all(16),
          child: ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            double price = model.getDalenaPrice();
            double discount = model.getDalenaDiscount();
            double ship = model.getShipPrice();
            String observation = model.getObservation();

            return _cartDetail(
                context, observation, price, discount, ship, buy);
          }),
        ));
  }
}

class CartDeliciaPrice extends StatelessWidget {
  final VoidCallback buy;

  CartDeliciaPrice(this.buy);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          padding: EdgeInsets.all(16),
          child: ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            double price = model.getDeliciaPrice();
            double discount = model.getDeliciaDiscount();
            double ship = model.getShipPrice();
            String observation = model.getObservation();

            return _cartDetail(
                context, observation, price, discount, ship, buy);
          }),
        ));
  }
}

class CartPalhocaPrice extends StatelessWidget {
  final VoidCallback buy;

  CartPalhocaPrice(this.buy);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          padding: EdgeInsets.all(16),
          child: ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            double price = model.getPalhocaPrice();
            double discount = model.getPalhocaDiscount();
            double ship = model.getShipPrice();
            String observation = model.getObservation();

            return _cartDetail(
                context, observation, price, discount, ship, buy);
          }),
        ));
  }
}

class CartBoticarioPrice extends StatelessWidget {
  final VoidCallback buy;

  CartBoticarioPrice(this.buy);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          padding: EdgeInsets.all(16),
          child: ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            double price = model.getBoticarioPrice();
            double discount = model.getBoticarioDiscount();
            double ship = model.getShipPrice();
            String observation = model.getObservation();

            return _cartDetail(
                context, observation, price, discount, ship, buy);
          }),
        ));
  }
}

class CartMinhaCoxinhaFavoritaPrice extends StatelessWidget {
  final VoidCallback buy;

  CartMinhaCoxinhaFavoritaPrice(this.buy);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          padding: EdgeInsets.all(16),
          child: ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            double price = model.getMinhaCoxinhaFavoritaPrice();
            double discount = model.getMinhaCoxinhaFavoritaDiscount();
            double ship = model.getShipPrice();
            String observation = model.getObservation();

            return _cartDetail(
                context, observation, price, discount, ship, buy);
          }),
        ));
  }
}

class CartMagoEspetinhoPrice extends StatelessWidget {
  final VoidCallback buy;

  CartMagoEspetinhoPrice(this.buy);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          padding: EdgeInsets.all(16),
          child: ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            double price = model.getMagoEspetinhoPrice();
            double discount = model.getMagoEspetinhoDiscount();
            double ship = model.getShipPrice();
            String observation = model.getObservation();

            return _cartDetail(
                context, observation, price, discount, ship, buy);
          }),
        ));
  }
}

class CartDindinPrice extends StatelessWidget {
  final VoidCallback buy;

  CartDindinPrice(this.buy);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          padding: EdgeInsets.all(16),
          child: ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            double price = model.getDindinPrice();
            double discount = model.getDindinDiscount();
            double ship = model.getShipPrice();
            String observation = model.getObservation();

            return _cartDetail(
                context, observation, price, discount, ship, buy);
          }),
        ));
  }
}


class CartLeChefPrice extends StatelessWidget {
  final VoidCallback buy;

  CartLeChefPrice(this.buy);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          padding: EdgeInsets.all(16),
          child: ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            double price = model.getLeChefPrice();
            double discount = model.getLeChefDiscount();
            double ship = model.getShipPrice();
            String observation = model.getObservation();

            return _cartDetail(
                context, observation, price, discount, ship, buy);
          }),
        ));
  }
}

class CartPizzaMaitaPrice extends StatelessWidget {
  final VoidCallback buy;

  CartPizzaMaitaPrice(this.buy);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          padding: EdgeInsets.all(16),
          child: ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            double price = model.getPizzaMaitaPrice();
            double discount = model.getPizzaMaitaDiscount();
            double ship = model.getShipPrice();
            String observation = model.getObservation();

            return _cartDetail(
                context, observation, price, discount, ship, buy);
          }),
        ));
  }
}

class CartLojaJPrice extends StatelessWidget {
  final VoidCallback buy;

  CartLojaJPrice(this.buy);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          padding: EdgeInsets.all(16),
          child: ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            double price = model.getLojaJPrice();
            double discount = model.getLojaJDiscount();
            double ship = model.getShipPrice();
            String observation = model.getObservation();

            return _cartDetail(
                context, observation, price, discount, ship, buy);
          }),
        ));
  }
}

class CartLojaLPrice extends StatelessWidget {
  final VoidCallback buy;

  CartLojaLPrice(this.buy);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          padding: EdgeInsets.all(16),
          child: ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            double price = model.getLojaLPrice();
            double discount = model.getLojaLDiscount();
            double ship = model.getShipPrice();
            String observation = model.getObservation();

            return _cartDetail(
                context, observation, price, discount, ship, buy);
          }),
        ));
  }
}

class CartLojaMPrice extends StatelessWidget {
  final VoidCallback buy;

  CartLojaMPrice(this.buy);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          padding: EdgeInsets.all(16),
          child: ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            double price = model.getLojaMPrice();
            double discount = model.getLojaMDiscount();
            double ship = model.getShipPrice();
            String observation = model.getObservation();

            return _cartDetail(
                context, observation, price, discount, ship, buy);
          }),
        ));
  }
}

class CartLojaNPrice extends StatelessWidget {
  final VoidCallback buy;

  CartLojaNPrice(this.buy);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          padding: EdgeInsets.all(16),
          child: ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            double price = model.getLojaNPrice();
            double discount = model.getLojaNDiscount();
            double ship = model.getShipPrice();
            String observation = model.getObservation();

            return _cartDetail(
                context, observation, price, discount, ship, buy);
          }),
        ));
  }
}

class CartLojaOPrice extends StatelessWidget {
  final VoidCallback buy;

  CartLojaOPrice(this.buy);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          padding: EdgeInsets.all(16),
          child: ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            double price = model.getLojaOPrice();
            double discount = model.getLojaODiscount();
            double ship = model.getShipPrice();
            String observation = model.getObservation();

            return _cartDetail(
                context, observation, price, discount, ship, buy);
          }),
        ));
  }
}

class CartLojaPPrice extends StatelessWidget {
  final VoidCallback buy;

  CartLojaPPrice(this.buy);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          padding: EdgeInsets.all(16),
          child: ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            double price = model.getLojaPPrice();
            double discount = model.getLojaPDiscount();
            double ship = model.getShipPrice();
            String observation = model.getObservation();

            return _cartDetail(
                context, observation, price, discount, ship, buy);
          }),
        ));
  }
}

Widget _cartDetail(context, observation, price, discount, ship, buy) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Text(
        'Resumo do Pedido',
        textAlign: TextAlign.start,
        style: TextStyle(
            color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 12),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Observações do pedido:'),
          Text(observation.toString())
        ],
      ),
      Divider(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Subtotal:'),
          Text('R\$ ${price.toStringAsFixed(2)}')
        ],
      ),
      Divider(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Desconto:'),
          Text('R\$ ${discount.toStringAsFixed(2)}')
        ],
      ),
      Divider(),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Entrega:'),
          Text('R\$ ${ship.toStringAsFixed(2)}')
        ],
      ),
      Divider(),
      SizedBox(height: 12),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Total:',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Text(
            'R\$ ${(price + ship - discount).toStringAsFixed(2)}',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
                fontSize: 16),
          )
        ],
      ),
      SizedBox(height: 12),
      RaisedButton(
        onPressed: buy,
        child: Text('Finalizar Pedido'),
        textColor: Colors.white,
        color: Theme.of(context).primaryColor,
      )
    ],
  );
}

/*return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Resumo do Pedido',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor, 
                    fontWeight: FontWeight.bold
                  ),  
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Observações do pedido:'),
                    Text(observation.toString())
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Subtotal:'),
                    Text('R\$ ${price.toStringAsFixed(2)}')
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Desconto:'),
                    Text('R\$ ${discount.toStringAsFixed(2)}')
                  ],
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Entrega:'),
                    Text('R\$ ${ship.toStringAsFixed(2)}')
                  ],
                ),
                Divider(),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Total:', style: TextStyle(fontWeight: FontWeight.w500),),
                    Text(
                      'R\$ ${(price + ship - discount).toStringAsFixed(2)}', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        color: Theme.of(context).primaryColor,
                        fontSize: 16
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12),
                RaisedButton(
                  onPressed: buy,
                  child: Text('Finalizar Pedido'),
                  textColor: Colors.white,
                  color: Theme.of(context).primaryColor,
                )
              ],
            );*/
