import 'package:delivery_morenope/models/cart_model.dart';
import 'package:delivery_morenope/models/user_model.dart';
import 'package:delivery_morenope/screens/login_screen.dart';
import 'package:delivery_morenope/screens/order_screen.dart';
import 'package:delivery_morenope/tiles/cart_tile.dart';
import 'package:delivery_morenope/widgets/cart_price.dart';
import 'package:delivery_morenope/widgets/discount_card.dart';
import 'package:delivery_morenope/widgets/observation_card.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class CartDalenaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBarScreen('Meu Carrinho Dalena'),
        body:
            ScopedModelDescendant<CartModel>(builder: (context, child, model) {
          if (model.isLoading && UserModel.of(context).isLoggedIn()) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (!UserModel.of(context).isLoggedIn()) {
            return Container(
                padding: EdgeInsets.all(16), child: _cartScreen(context));
          } else if (model.productsDalena == null ||
              model.productsDalena.length == 0) {
            return _centerWidget();
          } else {
            return ListView(
              children: <Widget>[
                Column(
                    children: model.productsDalena.map((product) {
                  return CartDalenaTile(product);
                }).toList()),
                DiscountCard(),
                ObservationCard(),
                CartDalenaPrice(() async {
                  String orderDalenaId = await model.dalenaOrder();
                  if (orderDalenaId != null)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            OrderScreen(orderDalenaId)));
                })
              ],
            );
          }
        }));
  }
}

class CartDeliciaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBarScreen('Meu Carrinho Delicia'),
        body:
            ScopedModelDescendant<CartModel>(builder: (context, child, model) {
          if (model.isLoading && UserModel.of(context).isLoggedIn()) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (!UserModel.of(context).isLoggedIn()) {
            return Container(
                padding: EdgeInsets.all(16), child: _cartScreen(context));
          } else if (model.productsDelicia == null ||
              model.productsDelicia.length == 0) {
            return _centerWidget();
          } else {
            return ListView(
              children: <Widget>[
                Column(
                    children: model.productsDelicia.map((product) {
                  return CartDeliciaTile(product);
                }).toList()),
                DiscountCard(),
                ObservationCard(),
                CartDeliciaPrice(() async {
                  String orderDeliciaId = await model.deliciaOrder();
                  if (orderDeliciaId != null)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            OrderScreen(orderDeliciaId)));
                })
              ],
            );
          }
        }));
  }
}

class CartPalhocaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBarScreen('Meu Carrinho Palhoca'),
        body:
            ScopedModelDescendant<CartModel>(builder: (context, child, model) {
          if (model.isLoading && UserModel.of(context).isLoggedIn()) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (!UserModel.of(context).isLoggedIn()) {
            return Container(
                padding: EdgeInsets.all(16), child: _cartScreen(context));
          } else if (model.productsPalhoca == null ||
              model.productsPalhoca.length == 0) {
            return _centerWidget();
          } else {
            return ListView(
              children: <Widget>[
                Column(
                    children: model.productsPalhoca.map((product) {
                  return CartPalhocaTile(product);
                }).toList()),
                DiscountCard(),
                ObservationCard(),
                CartPalhocaPrice(() async {
                  String orderPalhocaId = await model.palhocaOrder();
                  if (orderPalhocaId != null)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            OrderScreen(orderPalhocaId)));
                })
              ],
            );
          }
        }));
  }
}

class CartBoticarioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBarScreen('Meu Carrinho Boticario'),
        body:
            ScopedModelDescendant<CartModel>(builder: (context, child, model) {
          if (model.isLoading && UserModel.of(context).isLoggedIn()) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (!UserModel.of(context).isLoggedIn()) {
            return Container(
                padding: EdgeInsets.all(16), child: _cartScreen(context));
          } else if (model.productsBoticario == null ||
              model.productsBoticario.length == 0) {
            return _centerWidget();
          } else {
            return ListView(
              children: <Widget>[
                Column(
                    children: model.productsBoticario.map((product) {
                  return CartBoticarioTile(product);
                }).toList()),
                DiscountCard(),
                ObservationCard(),
                CartBoticarioPrice(() async {
                  String orderBoticarioId = await model.boticarioOrder();
                  if (orderBoticarioId != null)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            OrderScreen(orderBoticarioId)));
                })
              ],
            );
          }
        }));
  }
}

class CartMagoEspetinhoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBarScreen('Meu Carrinho Mago do Espetinho'),
        body:
            ScopedModelDescendant<CartModel>(builder: (context, child, model) {
          if (model.isLoading && UserModel.of(context).isLoggedIn()) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (!UserModel.of(context).isLoggedIn()) {
            return Container(
                padding: EdgeInsets.all(16), child: _cartScreen(context));
          } else if (model.productsMagoEspetinho == null ||
              model.productsMagoEspetinho.length == 0) {
            return _centerWidget();
          } else {
            return ListView(
              children: <Widget>[
                Column(
                    children: model.productsMagoEspetinho.map((product) {
                  return CartMagoEspetinhoTile(product);
                }).toList()),
                DiscountCard(),
                ObservationCard(),
                CartMagoEspetinhoPrice(() async {
                  String orderMagoEspetinhoId = await model.magoEspetinhoOrder();
                  if (orderMagoEspetinhoId != null)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            OrderScreen(orderMagoEspetinhoId)));
                })
              ],
            );
          }
        }));
  }
}

class CartMinhaCoxinhaFavoritaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBarScreen('Meu Carrinho Minha Coxinha Favorita'),
        body:
            ScopedModelDescendant<CartModel>(builder: (context, child, model) {
          if (model.isLoading && UserModel.of(context).isLoggedIn()) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (!UserModel.of(context).isLoggedIn()) {
            return Container(
                padding: EdgeInsets.all(16), child: _cartScreen(context));
          } else if (model.productsMinhaCoxinhaFavorita == null ||
              model.productsMinhaCoxinhaFavorita.length == 0) {
            return _centerWidget();
          } else {
            return ListView(
              children: <Widget>[
                Column(
                    children: model.productsMinhaCoxinhaFavorita.map((product) {
                  return CartMinhaCoxinhaFavoritaTile(product);
                }).toList()),
                DiscountCard(),
                ObservationCard(),
                CartMinhaCoxinhaFavoritaPrice(() async {
                  String orderMinhaCoxinhaFavoritaId = await model.minhaCoxinhaFavoritaOrder();
                  if (orderMinhaCoxinhaFavoritaId != null)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            OrderScreen(orderMinhaCoxinhaFavoritaId)));
                })
              ],
            );
          }
        }));
  }
}

class CartDindinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBarScreen('Meu Carrinho Dindin'),
        body:
            ScopedModelDescendant<CartModel>(builder: (context, child, model) {
          if (model.isLoading && UserModel.of(context).isLoggedIn()) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (!UserModel.of(context).isLoggedIn()) {
            return Container(
                padding: EdgeInsets.all(16), child: _cartScreen(context));
          } else if (model.productsDindin == null ||
              model.productsDindin.length == 0) {
            return _centerWidget();
          } else {
            return ListView(
              children: <Widget>[
                Column(
                    children: model.productsDindin.map((product) {
                  return CartDindinTile(product);
                }).toList()),
                DiscountCard(),
                ObservationCard(),
                CartDindinPrice(() async {
                  String orderDindinId = await model.dindinOrder();
                  if (orderDindinId != null)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            OrderScreen(orderDindinId)));
                })
              ],
            );
          }
        }));
  }
}

class CartLeChefScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBarScreen('Meu Carrinho Chef'),
        body:
            ScopedModelDescendant<CartModel>(builder: (context, child, model) {
          if (model.isLoading && UserModel.of(context).isLoggedIn()) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (!UserModel.of(context).isLoggedIn()) {
            return Container(
                padding: EdgeInsets.all(16), child: _cartScreen(context));
          } else if (model.productsLeChef == null ||
              model.productsLeChef.length == 0) {
            return _centerWidget();
          } else {
            return ListView(
              children: <Widget>[
                Column(
                    children: model.productsLeChef.map((product) {
                  return CartLeChefTile(product);
                }).toList()),
                DiscountCard(),
                ObservationCard(),
                CartLeChefPrice(() async {
                  String orderLeChefId = await model.leChefOrder();
                  if (orderLeChefId != null)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            OrderScreen(orderLeChefId)));
                })
              ],
            );
          }
        }));
  }
}

class CartPizzaMaitaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBarScreen('Meu Carrinho Pizza Maita'),
        body:
            ScopedModelDescendant<CartModel>(builder: (context, child, model) {
          if (model.isLoading && UserModel.of(context).isLoggedIn()) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (!UserModel.of(context).isLoggedIn()) {
            return Container(
                padding: EdgeInsets.all(16), child: _cartScreen(context));
          } else if (model.productsPizzaMaita == null ||
              model.productsPizzaMaita.length == 0) {
            return _centerWidget();
          } else {
            return ListView(
              children: <Widget>[
                Column(
                    children: model.productsPizzaMaita.map((product) {
                  return CartPizzaMaitaTile(product);
                }).toList()),
                DiscountCard(),
                ObservationCard(),
                CartPizzaMaitaPrice(() async {
                  String orderPizzaMaitaId = await model.pizzaMaitaOrder();
                  if (orderPizzaMaitaId != null)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            OrderScreen(orderPizzaMaitaId)));
                })
              ],
            );
          }
        }));
  }
}

class CartLojaJScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBarScreen('Meu Carrinho Sabores Delicia'),
        body:
            ScopedModelDescendant<CartModel>(builder: (context, child, model) {
          if (model.isLoading && UserModel.of(context).isLoggedIn()) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (!UserModel.of(context).isLoggedIn()) {
            return Container(
                padding: EdgeInsets.all(16), child: _cartScreen(context));
          } else if (model.productsLojaJ == null ||
              model.productsLojaJ.length == 0) {
            return _centerWidget();
          } else {
            return ListView(
              children: <Widget>[
                Column(
                    children: model.productsLojaJ.map((product) {
                  return CartLojaJTile(product);
                }).toList()),
                DiscountCard(),
                ObservationCard(),
                CartLojaJPrice(() async {
                  String orderLojaJId = await model.lojaJOrder();
                  if (orderLojaJId != null)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            OrderScreen(orderLojaJId)));
                })
              ],
            );
          }
        }));
  }
}

class CartLojaLScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBarScreen('Meu Carrinho Pague Pouco'),
        body:
            ScopedModelDescendant<CartModel>(builder: (context, child, model) {
          if (model.isLoading && UserModel.of(context).isLoggedIn()) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (!UserModel.of(context).isLoggedIn()) {
            return Container(
                padding: EdgeInsets.all(16), child: _cartScreen(context));
          } else if (model.productsLojaL == null ||
              model.productsLojaL.length == 0) {
            return _centerWidget();
          } else {
            return ListView(
              children: <Widget>[
                Column(
                    children: model.productsLojaL.map((product) {
                  return CartLojaLTile(product);
                }).toList()),
                DiscountCard(),
                ObservationCard(),
                CartLojaLPrice(() async {
                  String orderLojaLId = await model.lojaLOrder();
                  if (orderLojaLId != null)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            OrderScreen(orderLojaLId)));
                })
              ],
            );
          }
        }));
  }
}

class CartLojaMScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBarScreen('Meu Carrinho Sabores do Pão'),
        body:
            ScopedModelDescendant<CartModel>(builder: (context, child, model) {
          if (model.isLoading && UserModel.of(context).isLoggedIn()) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (!UserModel.of(context).isLoggedIn()) {
            return Container(
                padding: EdgeInsets.all(16), child: _cartScreen(context));
          } else if (model.productsLojaM == null ||
              model.productsLojaM.length == 0) {
            return _centerWidget();
          } else {
            return ListView(
              children: <Widget>[
                Column(
                    children: model.productsLojaM.map((product) {
                  return CartLojaMTile(product);
                }).toList()),
                DiscountCard(),
                ObservationCard(),
                CartLojaMPrice(() async {
                  String orderLojaMId = await model.lojaMOrder();
                  if (orderLojaMId != null)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            OrderScreen(orderLojaMId)));
                })
              ],
            );
          }
        }));
  }
}

class CartLojaNScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBarScreen('Meu Carrinho João Ferragens'),
        body:
            ScopedModelDescendant<CartModel>(builder: (context, child, model) {
          if (model.isLoading && UserModel.of(context).isLoggedIn()) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (!UserModel.of(context).isLoggedIn()) {
            return Container(
                padding: EdgeInsets.all(16), child: _cartScreen(context));
          } else if (model.productsLojaN == null ||
              model.productsLojaN.length == 0) {
            return _centerWidget();
          } else {
            return ListView(
              children: <Widget>[
                Column(
                    children: model.productsLojaN.map((product) {
                  return CartLojaNTile(product);
                }).toList()),
                DiscountCard(),
                ObservationCard(),
                CartLojaNPrice(() async {
                  String orderLojaNId = await model.lojaNOrder();
                  if (orderLojaNId != null)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            OrderScreen(orderLojaNId)));
                })
              ],
            );
          }
        }));
  }
}

class CartLojaOScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBarScreen('Meu Carrinho Tô Perto de Casa'),
        body:
            ScopedModelDescendant<CartModel>(builder: (context, child, model) {
          if (model.isLoading && UserModel.of(context).isLoggedIn()) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (!UserModel.of(context).isLoggedIn()) {
            return Container(
                padding: EdgeInsets.all(16), child: _cartScreen(context));
          } else if (model.productsLojaO == null ||
              model.productsLojaO.length == 0) {
            return _centerWidget();
          } else {
            return ListView(
              children: <Widget>[
                Column(
                    children: model.productsLojaO.map((product) {
                  return CartLojaOTile(product);
                }).toList()),
                DiscountCard(),
                ObservationCard(),
                CartLojaOPrice(() async {
                  String orderLojaOId = await model.lojaOOrder();
                  if (orderLojaOId != null)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            OrderScreen(orderLojaOId)));
                })
              ],
            );
          }
        }));
  }
}

class CartLojaPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBarScreen('Meu Carrinho Happylândia'),
        body:
            ScopedModelDescendant<CartModel>(builder: (context, child, model) {
          if (model.isLoading && UserModel.of(context).isLoggedIn()) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (!UserModel.of(context).isLoggedIn()) {
            return Container(
                padding: EdgeInsets.all(16), child: _cartScreen(context));
          } else if (model.productsLojaP == null ||
              model.productsLojaP.length == 0) {
            return _centerWidget();
          } else {
            return ListView(
              children: <Widget>[
                Column(
                    children: model.productsLojaP.map((product) {
                  return CartLojaPTile(product);
                }).toList()),
                DiscountCard(),
                ObservationCard(),
                CartLojaPPrice(() async {
                  String orderLojaPId = await model.lojaPOrder();
                  if (orderLojaPId != null)
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) =>
                            OrderScreen(orderLojaPId)));
                })
              ],
            );
          }
        }));
  }
}

Widget _cartScreen(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(Icons.remove_shopping_cart,
          size: 80, color: Theme.of(context).primaryColor),
      SizedBox(height: 16),
      Text(
        'Faça o login para adicionar produtos ao corrinho',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 16),
      RaisedButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        child:
            Text('Entrar', style: TextStyle(fontSize: 18, color: Colors.white)),
        color: Theme.of(context).primaryColor,
      )
    ],
  );
}

Widget _appBarScreen(text) {
  return AppBar(title: Text(text), actions: <Widget>[
    Container(
        padding: EdgeInsets.only(right: 8),
        alignment: Alignment.center,
        child: ScopedModelDescendant<CartModel>(
          builder: (context, child, model) {
            int p = model.productsDelicia.length;
            return Text(
              '${p ?? 0} ${p == 1 ? 'ITEM' : 'ITENS'}',
              style: TextStyle(fontSize: 18),
            );
          },
        ))
  ]);
}

Widget _centerWidget() {
  return Center(
      child: Text(
    'Nenhum produto no carrinho',
    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  ));
}

/*AppBar(title: Text('Meu carrinho DaLena'), actions: <Widget>[
          Container(
              padding: EdgeInsets.only(right: 8),
              alignment: Alignment.center,
              child: ScopedModelDescendant<CartModel>(
                builder: (context, child, model) {
                  int p = model.productsDelicia.length;
                  return Text(
                    '${p ?? 0} ${p == 1 ? 'ITEM' : 'ITENS'}',
                    style: TextStyle(fontSize: 18),
                  );
                },
              ))
        ])*/

/*Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.remove_shopping_cart,
                      size: 80, color: Theme.of(context).primaryColor),
                  SizedBox(height: 16),
                  Text(
                    'Faça o login para adicionar produtos ao corrinho',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  RaisedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    child: Text('Entrar',
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    color: Theme.of(context).primaryColor,
                  )
                ],
              ),*/

/*Center(
                child: Text(
              'Nenhum produto no carrinho',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ));*/
