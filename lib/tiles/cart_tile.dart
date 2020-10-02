import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_morenope/datas/cart_product.dart';
import 'package:delivery_morenope/datas/product_data.dart';
import 'package:delivery_morenope/models/cart_model.dart';
import 'package:flutter/material.dart';

class CartDalenaTile extends StatelessWidget {

  final CartDalenaProduct cartDalenaProduct;

  CartDalenaTile(this.cartDalenaProduct);

  @override
  Widget build(BuildContext context) {

    Widget _buildContent(){
      CartModel.of(context).updatePrice();

      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            width: 120,
            child: Image.network(
              cartDalenaProduct.productData.images[0],
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    cartDalenaProduct.productData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    'R\$ ${cartDalenaProduct.productData.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Theme.of(context).primaryColor, 
                        onPressed: cartDalenaProduct.quantity > 1 ?
                        (){
                          CartModel.of(context).decDalenaProduct(cartDalenaProduct);
                        } : null,
                      ),
                      Text(cartDalenaProduct.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Theme.of(context).primaryColor, 
                        onPressed: (){
                          CartModel.of(context).incDalenaProduct(cartDalenaProduct);
                        }
                      ),
                      FlatButton(
                        onPressed: (){
                          CartModel.of(context).removeCartDalenaItem(cartDalenaProduct);
                        }, 
                        child: Text(
                          'Remover', 
                          style: TextStyle(
                            color: Colors.grey[500]
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: cartDalenaProduct.productData == null ? 
        FutureBuilder<DocumentSnapshot>(
          future: Firestore.instance.collection('store06')
          .document(cartDalenaProduct.pid).get(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              cartDalenaProduct.productData = ProductData.fromDocument(snapshot.data);
              return _buildContent();
            }
            else{
              return Container(
                height: 70,
                child: CircularProgressIndicator(),
                alignment: Alignment.center,
              );
            }
          },
        ) : _buildContent()
    );
  }
}

class CartDeliciaTile extends StatelessWidget {

  final CartDeliciaProduct cartDeliciaProduct;

  CartDeliciaTile(this.cartDeliciaProduct);

  @override
  Widget build(BuildContext context) {

    Widget _buildContent(){
      CartModel.of(context).updatePrice();

      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            width: 120,
            child: Image.network(
              cartDeliciaProduct.productData.images[0],
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    cartDeliciaProduct.productData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    'R\$ ${cartDeliciaProduct.productData.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Theme.of(context).primaryColor, 
                        onPressed: cartDeliciaProduct.quantity > 1 ? 
                        (){
                          CartModel.of(context).decDeliciaProduct(cartDeliciaProduct);
                        } : null,
                      ),
                      Text(cartDeliciaProduct.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Theme.of(context).primaryColor, 
                        onPressed: (){
                          CartModel.of(context).incDeliciaProduct(cartDeliciaProduct);
                        }
                      ),
                      FlatButton(
                        onPressed: (){
                          CartModel.of(context).removeCartDeliciaItem(cartDeliciaProduct);
                        }, 
                        child: Text(
                          'Remover', 
                          style: TextStyle(
                            color: Colors.grey[500]
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: cartDeliciaProduct.productData == null ? 
        FutureBuilder<DocumentSnapshot>(
          future: Firestore.instance.collection('store02')
          .document(cartDeliciaProduct.pid).get(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              cartDeliciaProduct.productData = ProductData.fromDocument(snapshot.data);
              return _buildContent();
            }
            else{
              return Container(
                height: 70,
                child: CircularProgressIndicator(),
                alignment: Alignment.center,
              );
            }
          },
        ) : _buildContent()
    );
  }
}

class CartPalhocaTile extends StatelessWidget {

  final CartPalhocaProduct cartBoticarioProduct;

  CartPalhocaTile(this.cartBoticarioProduct);

  @override
  Widget build(BuildContext context) {

    Widget _buildContent(){
      CartModel.of(context).updatePrice();

      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            width: 120,
            child: Image.network(
              cartBoticarioProduct.productData.images[0],
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    cartBoticarioProduct.productData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    'R\$ ${cartBoticarioProduct.productData.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Theme.of(context).primaryColor, 
                        onPressed: cartBoticarioProduct.quantity > 1 ? 
                        (){
                          CartModel.of(context).decPalhocaProduct(cartBoticarioProduct);
                        } : null,
                      ),
                      Text(cartBoticarioProduct.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Theme.of(context).primaryColor, 
                        onPressed: (){
                          CartModel.of(context).incPalhocaProduct(cartBoticarioProduct);
                        }
                      ),
                      FlatButton(
                        onPressed: (){
                          CartModel.of(context).removeCartPalhocaItem(cartBoticarioProduct);
                        }, 
                        child: Text(
                          'Remover', 
                          style: TextStyle(
                            color: Colors.grey[500]
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: cartBoticarioProduct.productData == null ? 
        FutureBuilder<DocumentSnapshot>(
          future: Firestore.instance.collection('store01')
          .document(cartBoticarioProduct.pid).get(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              cartBoticarioProduct.productData = ProductData.fromDocument(snapshot.data);
              return _buildContent();
            }
            else{
              return Container(
                height: 70,
                child: CircularProgressIndicator(),
                alignment: Alignment.center,
              );
            }
          },
        ) : _buildContent()
    );
  }
}

class CartBoticarioTile extends StatelessWidget {

  final CartBoticarioProduct cartBoticarioProduct;

  CartBoticarioTile(this.cartBoticarioProduct);

  @override
  Widget build(BuildContext context) {

    Widget _buildContent(){
      CartModel.of(context).updatePrice();

      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            width: 120,
            child: Image.network(
              cartBoticarioProduct.productData.images[0],
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    cartBoticarioProduct.productData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    'R\$ ${cartBoticarioProduct.productData.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Theme.of(context).primaryColor, 
                        onPressed: cartBoticarioProduct.quantity > 1 ? 
                        (){
                          CartModel.of(context).decBoticarioProduct(cartBoticarioProduct);
                        } : null,
                      ),
                      Text(cartBoticarioProduct.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Theme.of(context).primaryColor, 
                        onPressed: (){
                          CartModel.of(context).incBoticarioProduct(cartBoticarioProduct);
                        }
                      ),
                      FlatButton(
                        onPressed: (){
                          CartModel.of(context).removeCartBoticarioItem(cartBoticarioProduct);
                        }, 
                        child: Text(
                          'Remover', 
                          style: TextStyle(
                            color: Colors.grey[500]
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: cartBoticarioProduct.productData == null ? 
        FutureBuilder<DocumentSnapshot>(
          future: Firestore.instance.collection('store03')
          .document(cartBoticarioProduct.pid).get(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              cartBoticarioProduct.productData = ProductData.fromDocument(snapshot.data);
              return _buildContent();
            }
            else{
              return Container(
                height: 70,
                child: CircularProgressIndicator(),
                alignment: Alignment.center,
              );
            }
          },
        ) : _buildContent()
    );
  }
}

class CartMinhaCoxinhaFavoritaTile extends StatelessWidget {

  final CartMinhaCoxinhaFavoritaProduct cartMinhaCoxinhaFavoritaProduct;

  CartMinhaCoxinhaFavoritaTile(this.cartMinhaCoxinhaFavoritaProduct);

  @override
  Widget build(BuildContext context) {

    Widget _buildContent(){
      CartModel.of(context).updatePrice();

      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            width: 120,
            child: Image.network(
              cartMinhaCoxinhaFavoritaProduct.productData.images[0],
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    cartMinhaCoxinhaFavoritaProduct.productData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    'R\$ ${cartMinhaCoxinhaFavoritaProduct.productData.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Theme.of(context).primaryColor, 
                        onPressed: cartMinhaCoxinhaFavoritaProduct.quantity > 1 ? 
                        (){
                          CartModel.of(context).decMinhaCoxinhaFavoritaProduct(cartMinhaCoxinhaFavoritaProduct);
                        } : null,
                      ),
                      Text(cartMinhaCoxinhaFavoritaProduct.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Theme.of(context).primaryColor, 
                        onPressed: (){
                          CartModel.of(context).incMinhaCoxinhaFavoritaProduct(cartMinhaCoxinhaFavoritaProduct);
                        }
                      ),
                      FlatButton(
                        onPressed: (){
                          CartModel.of(context).removeCartMinhaCoxinhaFavoritaItem(cartMinhaCoxinhaFavoritaProduct);
                        }, 
                        child: Text(
                          'Remover', 
                          style: TextStyle(
                            color: Colors.grey[500]
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: cartMinhaCoxinhaFavoritaProduct.productData == null ? 
        FutureBuilder<DocumentSnapshot>(
          future: Firestore.instance.collection('store04')
          .document(cartMinhaCoxinhaFavoritaProduct.pid).get(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              cartMinhaCoxinhaFavoritaProduct.productData = ProductData.fromDocument(snapshot.data);
              return _buildContent();
            }
            else{
              return Container(
                height: 70,
                child: CircularProgressIndicator(),
                alignment: Alignment.center,
              );
            }
          },
        ) : _buildContent()
    );
  }
}

class CartMagoEspetinhoTile extends StatelessWidget {

  final CartMagoEspetinhoProduct cartMagoEspetinhoProduct;

  CartMagoEspetinhoTile(this.cartMagoEspetinhoProduct);

  @override
  Widget build(BuildContext context) {

    Widget _buildContent(){
      CartModel.of(context).updatePrice();

      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            width: 120,
            child: Image.network(
              cartMagoEspetinhoProduct.productData.images[0],
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    cartMagoEspetinhoProduct.productData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    'R\$ ${cartMagoEspetinhoProduct.productData.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Theme.of(context).primaryColor, 
                        onPressed: cartMagoEspetinhoProduct.quantity > 1 ? 
                        (){
                          CartModel.of(context).decMagoEspetinhoProduct(cartMagoEspetinhoProduct);
                        } : null,
                      ),
                      Text(cartMagoEspetinhoProduct.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Theme.of(context).primaryColor, 
                        onPressed: (){
                          CartModel.of(context).incMagoEspetinhoProduct(cartMagoEspetinhoProduct);
                        }
                      ),
                      FlatButton(
                        onPressed: (){
                          CartModel.of(context).removeCartMagoEspetinhoItem(cartMagoEspetinhoProduct);
                        }, 
                        child: Text(
                          'Remover', 
                          style: TextStyle(
                            color: Colors.grey[500]
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: cartMagoEspetinhoProduct.productData == null ? 
        FutureBuilder<DocumentSnapshot>(
          future: Firestore.instance.collection('store05')
          .document(cartMagoEspetinhoProduct.pid).get(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              cartMagoEspetinhoProduct.productData = ProductData.fromDocument(snapshot.data);
              return _buildContent();
            }
            else{
              return Container(
                height: 70,
                child: CircularProgressIndicator(),
                alignment: Alignment.center,
              );
            }
          },
        ) : _buildContent()
    );
  }
}

class CartDindinTile extends StatelessWidget {

  final CartDindinProduct cartDindinProduct;

  CartDindinTile(this.cartDindinProduct);

  @override
  Widget build(BuildContext context) {

    Widget _buildContent(){
      CartModel.of(context).updatePrice();

      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            width: 120,
            child: Image.network(
              cartDindinProduct.productData.images[0],
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    cartDindinProduct.productData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    'R\$ ${cartDindinProduct.productData.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Theme.of(context).primaryColor, 
                        onPressed: cartDindinProduct.quantity > 1 ? 
                        (){
                          CartModel.of(context).decDindinProduct(cartDindinProduct);
                        } : null,
                      ),
                      Text(cartDindinProduct.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Theme.of(context).primaryColor, 
                        onPressed: (){
                          CartModel.of(context).incDindinProduct(cartDindinProduct);
                        }
                      ),
                      FlatButton(
                        onPressed: (){
                          CartModel.of(context).removeCartDindinItem(cartDindinProduct);
                        }, 
                        child: Text(
                          'Remover', 
                          style: TextStyle(
                            color: Colors.grey[500]
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: cartDindinProduct.productData == null ? 
        FutureBuilder<DocumentSnapshot>(
          future: Firestore.instance.collection('store07')
          .document(cartDindinProduct.pid).get(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              cartDindinProduct.productData = ProductData.fromDocument(snapshot.data);
              return _buildContent();
            }
            else{
              return Container(
                height: 70,
                child: CircularProgressIndicator(),
                alignment: Alignment.center,
              );
            }
          },
        ) : _buildContent()
    );
  }
}

class CartLeChefTile extends StatelessWidget {

  final CartLeChefProduct cartLeChefProduct;

  CartLeChefTile(this.cartLeChefProduct);

  @override
  Widget build(BuildContext context) {

    Widget _buildContent(){
      CartModel.of(context).updatePrice();

      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            width: 120,
            child: Image.network(
              cartLeChefProduct.productData.images[0],
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    cartLeChefProduct.productData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    'R\$ ${cartLeChefProduct.productData.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Theme.of(context).primaryColor, 
                        onPressed: cartLeChefProduct.quantity > 1 ? 
                        (){
                          CartModel.of(context).decLeChefProduct(cartLeChefProduct);
                        } : null,
                      ),
                      Text(cartLeChefProduct.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Theme.of(context).primaryColor, 
                        onPressed: (){
                          CartModel.of(context).incLeChefProduct(cartLeChefProduct);
                        }
                      ),
                      FlatButton(
                        onPressed: (){
                          CartModel.of(context).removeCartLeChefItem(cartLeChefProduct);
                        }, 
                        child: Text(
                          'Remover', 
                          style: TextStyle(
                            color: Colors.grey[500]
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: cartLeChefProduct.productData == null ? 
        FutureBuilder<DocumentSnapshot>(
          future: Firestore.instance.collection('store08')
          .document(cartLeChefProduct.pid).get(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              cartLeChefProduct.productData = ProductData.fromDocument(snapshot.data);
              return _buildContent();
            }
            else{
              return Container(
                height: 70,
                child: CircularProgressIndicator(),
                alignment: Alignment.center,
              );
            }
          },
        ) : _buildContent()
    );
  }
}

class CartPizzaMaitaTile extends StatelessWidget {

  final CartPizzaMaitaProduct cartPizzaMaitaProduct;

  CartPizzaMaitaTile(this.cartPizzaMaitaProduct);

  @override
  Widget build(BuildContext context) {

    Widget _buildContent(){
      CartModel.of(context).updatePrice();

      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            width: 120,
            child: Image.network(
              cartPizzaMaitaProduct.productData.images[0],
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    cartPizzaMaitaProduct.productData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    'R\$ ${cartPizzaMaitaProduct.productData.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Theme.of(context).primaryColor, 
                        onPressed: cartPizzaMaitaProduct.quantity > 1 ? 
                        (){
                          CartModel.of(context).decPizzaMaitaProduct(cartPizzaMaitaProduct);
                        } : null,
                      ),
                      Text(cartPizzaMaitaProduct.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Theme.of(context).primaryColor, 
                        onPressed: (){
                          CartModel.of(context).incPizzaMaitaProduct(cartPizzaMaitaProduct);
                        }
                      ),
                      FlatButton(
                        onPressed: (){
                          CartModel.of(context).removeCartPizzaMaitaItem(cartPizzaMaitaProduct);
                        }, 
                        child: Text(
                          'Remover', 
                          style: TextStyle(
                            color: Colors.grey[500]
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: cartPizzaMaitaProduct.productData == null ? 
        FutureBuilder<DocumentSnapshot>(
          future: Firestore.instance.collection('store09')
          .document(cartPizzaMaitaProduct.pid).get(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              cartPizzaMaitaProduct.productData = ProductData.fromDocument(snapshot.data);
              return _buildContent();
            }
            else{
              return Container(
                height: 70,
                child: CircularProgressIndicator(),
                alignment: Alignment.center,
              );
            }
          },
        ) : _buildContent()
    );
  }
}

class CartLojaJTile extends StatelessWidget {

  final CartLojaJProduct cartLojaJProduct;

  CartLojaJTile(this.cartLojaJProduct);

  @override
  Widget build(BuildContext context) {

    Widget _buildContent(){
      CartModel.of(context).updatePrice();

      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            width: 120,
            child: Image.network(
              cartLojaJProduct.productData.images[0],
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    cartLojaJProduct.productData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    'R\$ ${cartLojaJProduct.productData.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Theme.of(context).primaryColor, 
                        onPressed: cartLojaJProduct.quantity > 1 ? 
                        (){
                          CartModel.of(context).decLojaJProduct(cartLojaJProduct);
                        } : null,
                      ),
                      Text(cartLojaJProduct.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Theme.of(context).primaryColor, 
                        onPressed: (){
                          CartModel.of(context).incLojaJProduct(cartLojaJProduct);
                        }
                      ),
                      FlatButton(
                        onPressed: (){
                          CartModel.of(context).removeCartLojaJItem(cartLojaJProduct);
                        }, 
                        child: Text(
                          'Remover', 
                          style: TextStyle(
                            color: Colors.grey[500]
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: cartLojaJProduct.productData == null ? 
        FutureBuilder<DocumentSnapshot>(
          future: Firestore.instance.collection('store10')
          .document(cartLojaJProduct.pid).get(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              cartLojaJProduct.productData = ProductData.fromDocument(snapshot.data);
              return _buildContent();
            }
            else{
              return Container(
                height: 70,
                child: CircularProgressIndicator(),
                alignment: Alignment.center,
              );
            }
          },
        ) : _buildContent()
    );
  }
}

class CartLojaLTile extends StatelessWidget {

  final CartLojaLProduct cartLojaLProduct;

  CartLojaLTile(this.cartLojaLProduct);

  @override
  Widget build(BuildContext context) {

    Widget _buildContent(){
      CartModel.of(context).updatePrice();

      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            width: 120,
            child: Image.network(
              cartLojaLProduct.productData.images[0],
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    cartLojaLProduct.productData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    'R\$ ${cartLojaLProduct.productData.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Theme.of(context).primaryColor, 
                        onPressed: cartLojaLProduct.quantity > 1 ? 
                        (){
                          CartModel.of(context).decLojaLProduct(cartLojaLProduct);
                        } : null,
                      ),
                      Text(cartLojaLProduct.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Theme.of(context).primaryColor, 
                        onPressed: (){
                          CartModel.of(context).incLojaLProduct(cartLojaLProduct);
                        }
                      ),
                      FlatButton(
                        onPressed: (){
                          CartModel.of(context).removeCartLojaLItem(cartLojaLProduct);
                        }, 
                        child: Text(
                          'Remover', 
                          style: TextStyle(
                            color: Colors.grey[500]
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: cartLojaLProduct.productData == null ? 
        FutureBuilder<DocumentSnapshot>(
          future: Firestore.instance.collection('store11')
          .document(cartLojaLProduct.pid).get(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              cartLojaLProduct.productData = ProductData.fromDocument(snapshot.data);
              return _buildContent();
            }
            else{
              return Container(
                height: 70,
                child: CircularProgressIndicator(),
                alignment: Alignment.center,
              );
            }
          },
        ) : _buildContent()
    );
  }
}

class CartLojaMTile extends StatelessWidget {

  final CartLojaMProduct cartLojaMProduct;

  CartLojaMTile(this.cartLojaMProduct);

  @override
  Widget build(BuildContext context) {

    Widget _buildContent(){
      CartModel.of(context).updatePrice();

      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            width: 120,
            child: Image.network(
              cartLojaMProduct.productData.images[0],
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    cartLojaMProduct.productData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    'R\$ ${cartLojaMProduct.productData.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Theme.of(context).primaryColor, 
                        onPressed: cartLojaMProduct.quantity > 1 ? 
                        (){
                          CartModel.of(context).decLojaMProduct(cartLojaMProduct);
                        } : null,
                      ),
                      Text(cartLojaMProduct.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Theme.of(context).primaryColor, 
                        onPressed: (){
                          CartModel.of(context).incLojaMProduct(cartLojaMProduct);
                        }
                      ),
                      FlatButton(
                        onPressed: (){
                          CartModel.of(context).removeCartLojaMItem(cartLojaMProduct);
                        }, 
                        child: Text(
                          'Remover', 
                          style: TextStyle(
                            color: Colors.grey[500]
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: cartLojaMProduct.productData == null ? 
        FutureBuilder<DocumentSnapshot>(
          future: Firestore.instance.collection('store12')
          .document(cartLojaMProduct.pid).get(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              cartLojaMProduct.productData = ProductData.fromDocument(snapshot.data);
              return _buildContent();
            }
            else{
              return Container(
                height: 70,
                child: CircularProgressIndicator(),
                alignment: Alignment.center,
              );
            }
          },
        ) : _buildContent()
    );
  }
}

class CartLojaNTile extends StatelessWidget {

  final CartLojaNProduct cartLojaNProduct;

  CartLojaNTile(this.cartLojaNProduct);

  @override
  Widget build(BuildContext context) {

    Widget _buildContent(){
      CartModel.of(context).updatePrice();

      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            width: 120,
            child: Image.network(
              cartLojaNProduct.productData.images[0],
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    cartLojaNProduct.productData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    'R\$ ${cartLojaNProduct.productData.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Theme.of(context).primaryColor, 
                        onPressed: cartLojaNProduct.quantity > 1 ? 
                        (){
                          CartModel.of(context).decLojaNProduct(cartLojaNProduct);
                        } : null,
                      ),
                      Text(cartLojaNProduct.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Theme.of(context).primaryColor, 
                        onPressed: (){
                          CartModel.of(context).incLojaNProduct(cartLojaNProduct);
                        }
                      ),
                      FlatButton(
                        onPressed: (){
                          CartModel.of(context).removeCartLojaNItem(cartLojaNProduct);
                        }, 
                        child: Text(
                          'Remover', 
                          style: TextStyle(
                            color: Colors.grey[500]
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: cartLojaNProduct.productData == null ? 
        FutureBuilder<DocumentSnapshot>(
          future: Firestore.instance.collection('store13')
          .document(cartLojaNProduct.pid).get(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              cartLojaNProduct.productData = ProductData.fromDocument(snapshot.data);
              return _buildContent();
            }
            else{
              return Container(
                height: 70,
                child: CircularProgressIndicator(),
                alignment: Alignment.center,
              );
            }
          },
        ) : _buildContent()
    );
  }
}

class CartLojaOTile extends StatelessWidget {

  final CartLojaOProduct cartLojaOProduct;

  CartLojaOTile(this.cartLojaOProduct);

  @override
  Widget build(BuildContext context) {

    Widget _buildContent(){
      CartModel.of(context).updatePrice();

      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            width: 120,
            child: Image.network(
              cartLojaOProduct.productData.images[0],
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    cartLojaOProduct.productData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    'R\$ ${cartLojaOProduct.productData.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Theme.of(context).primaryColor, 
                        onPressed: cartLojaOProduct.quantity > 1 ? 
                        (){
                          CartModel.of(context).decLojaOProduct(cartLojaOProduct);
                        } : null,
                      ),
                      Text(cartLojaOProduct.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Theme.of(context).primaryColor, 
                        onPressed: (){
                          CartModel.of(context).incLojaOProduct(cartLojaOProduct);
                        }
                      ),
                      FlatButton(
                        onPressed: (){
                          CartModel.of(context).removeCartLojaOItem(cartLojaOProduct);
                        }, 
                        child: Text(
                          'Remover', 
                          style: TextStyle(
                            color: Colors.grey[500]
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: cartLojaOProduct.productData == null ? 
        FutureBuilder<DocumentSnapshot>(
          future: Firestore.instance.collection('Mudar')
          .document(cartLojaOProduct.pid).get(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              cartLojaOProduct.productData = ProductData.fromDocument(snapshot.data);
              return _buildContent();
            }
            else{
              return Container(
                height: 70,
                child: CircularProgressIndicator(),
                alignment: Alignment.center,
              );
            }
          },
        ) : _buildContent()
    );
  }
}

class CartLojaPTile extends StatelessWidget {

  final CartLojaPProduct cartLojaPProduct;

  CartLojaPTile(this.cartLojaPProduct);

  @override
  Widget build(BuildContext context) {

    Widget _buildContent(){
      CartModel.of(context).updatePrice();

      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            width: 120,
            child: Image.network(
              cartLojaPProduct.productData.images[0],
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    cartLojaPProduct.productData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    'R\$ ${cartLojaPProduct.productData.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Theme.of(context).primaryColor, 
                        onPressed: cartLojaPProduct.quantity > 1 ? 
                        (){
                          CartModel.of(context).decLojaPProduct(cartLojaPProduct);
                        } : null,
                      ),
                      Text(cartLojaPProduct.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Theme.of(context).primaryColor, 
                        onPressed: (){
                          CartModel.of(context).incLojaPProduct(cartLojaPProduct);
                        }
                      ),
                      FlatButton(
                        onPressed: (){
                          CartModel.of(context).removeCartLojaPItem(cartLojaPProduct);
                        }, 
                        child: Text(
                          'Remover', 
                          style: TextStyle(
                            color: Colors.grey[500]
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: cartLojaPProduct.productData == null ? 
        FutureBuilder<DocumentSnapshot>(
          future: Firestore.instance.collection('store15')
          .document(cartLojaPProduct.pid).get(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              cartLojaPProduct.productData = ProductData.fromDocument(snapshot.data);
              return _buildContent();
            }
            else{
              return Container(
                height: 70,
                child: CircularProgressIndicator(),
                alignment: Alignment.center,
              );
            }
          },
        ) : _buildContent()
    );
  }
}


/*class CartMinhaCoxinhaFavoritaTile extends StatelessWidget {

  final CartMinhaCoxinhaFavoritaProduct cartMinhaCoxinhaFavoritaProduct;

  CartMinhaCoxinhaFavoritaTile(this.cartMinhaCoxinhaFavoritaProduct);

  @override
  Widget build(BuildContext context) {

    Widget _buildContent(){
      CartModel.of(context).updatePrice();

      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            width: 120,
            child: Image.network(
              cartMinhaCoxinhaFavoritaProduct.productData.images[0],
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    cartMinhaCoxinhaFavoritaProduct.productData.title,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 17
                    ),
                  ),
                  Text(
                    'R\$ ${cartMinhaCoxinhaFavoritaProduct.productData.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.remove),
                        color: Theme.of(context).primaryColor, 
                        onPressed: cartMinhaCoxinhaFavoritaProduct.quantity > 1 ? 
                        (){
                          CartModel.of(context).decMudarProduct(cartMinhaCoxinhaFavoritaProduct);
                        } : null,
                      ),
                      Text(cartMinhaCoxinhaFavoritaProduct.quantity.toString()),
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Theme.of(context).primaryColor, 
                        onPressed: (){
                          CartModel.of(context).incMudarProduct(cartMinhaCoxinhaFavoritaProduct);
                        }
                      ),
                      FlatButton(
                        onPressed: (){
                          CartModel.of(context).removeCartMudarItem(cartMinhaCoxinhaFavoritaProduct);
                        }, 
                        child: Text(
                          'Remover', 
                          style: TextStyle(
                            color: Colors.grey[500]
                          ),
                        )
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ],
      );
    }

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: cartMinhaCoxinhaFavoritaProduct.productData == null ? 
        FutureBuilder<DocumentSnapshot>(
          future: Firestore.instance.collection('Mudar')
          .document(cartMinhaCoxinhaFavoritaProduct.pid).get(),
          builder: (context, snapshot){
            if(snapshot.hasData){
              cartMinhaCoxinhaFavoritaProduct.productData = ProductData.fromDocument(snapshot.data);
              return _buildContent();
            }
            else{
              return Container(
                height: 70,
                child: CircularProgressIndicator(),
                alignment: Alignment.center,
              );
            }
          },
        ) : _buildContent()
    );
  }
}*/