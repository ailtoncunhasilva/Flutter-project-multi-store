import 'package:delivery_morenope/datas/cart_product.dart';
import 'package:delivery_morenope/datas/product_data.dart';
import 'package:delivery_morenope/models/cart_model.dart';
import 'package:delivery_morenope/models/user_model.dart';
import 'package:delivery_morenope/screens/cart_screen.dart';
import 'package:delivery_morenope/screens/login_screen.dart';
import 'package:flutter/material.dart';

class ProductDalenaScreen extends StatefulWidget {
  final ProductData product;

  ProductDalenaScreen(this.product);

  @override
  _ProductDalenaScreenState createState() => _ProductDalenaScreenState(product);
}

class _ProductDalenaScreenState extends State<ProductDalenaScreen> {
  final ProductData product;

  _ProductDalenaScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
        appBar: _appBar(product),
        body: ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.9,
              child: Image.network(product.images[0], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _productScreen(context, product),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () {
                        if (UserModel.of(context).isLoggedIn()) {
                          CartDalenaProduct cartDalenaProduct =
                              CartDalenaProduct();
                          cartDalenaProduct.quantity = 1;
                          cartDalenaProduct.pid = product.id;
                          cartDalenaProduct.productData = product;

                          CartModel.of(context)
                              .addCartDalenaItem(cartDalenaProduct);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartDalenaScreen()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        }
                      },
                      child: _textButton(context),
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ProductDeliciaScreen extends StatefulWidget {
  final ProductData product;

  ProductDeliciaScreen(this.product);

  @override
  _ProductDeliciaScreenState createState() =>
      _ProductDeliciaScreenState(product);
}

class _ProductDeliciaScreenState extends State<ProductDeliciaScreen> {
  final ProductData product;

  _ProductDeliciaScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
        appBar: _appBar(product),
        body: ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.9,
              child: Image.network(product.images[0], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _productScreen(context, product),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () {
                        if (UserModel.of(context).isLoggedIn()) {
                          CartDeliciaProduct cartDeliciaProduct =
                              CartDeliciaProduct();
                          cartDeliciaProduct.quantity = 1;
                          cartDeliciaProduct.pid = product.id;
                          cartDeliciaProduct.productData = product;

                          CartModel.of(context)
                              .addCartDeliciaItem(cartDeliciaProduct);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartDeliciaScreen()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        }
                      },
                      child: _textButton(context),
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ProductPalhocaScreen extends StatefulWidget {
  final ProductData product;

  ProductPalhocaScreen(this.product);

  @override
  _ProductPalhocaScreenState createState() =>
      _ProductPalhocaScreenState(product);
}

class _ProductPalhocaScreenState extends State<ProductPalhocaScreen> {
  final ProductData product;

  _ProductPalhocaScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
        appBar: _appBar(product),
        body: ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.9,
              child: Image.network(product.images[0], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _productScreen(context, product),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () {
                        if (UserModel.of(context).isLoggedIn()) {
                          CartPalhocaProduct cartPalhocaProduct =
                              CartPalhocaProduct();
                          cartPalhocaProduct.quantity = 1;
                          cartPalhocaProduct.pid = product.id;
                          cartPalhocaProduct.productData = product;

                          CartModel.of(context)
                              .addCartPalhocaItem(cartPalhocaProduct);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartPalhocaScreen()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        }
                      },
                      child: _textButton(context),
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ProductBoticarioScreen extends StatefulWidget {
  final ProductData product;

  ProductBoticarioScreen(this.product);

  @override
  _ProductBoticarioScreenState createState() =>
      _ProductBoticarioScreenState(product);
}

class _ProductBoticarioScreenState extends State<ProductBoticarioScreen> {
  final ProductData product;

  _ProductBoticarioScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
        appBar: _appBar(product),
        body: ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.9,
              child: Image.network(product.images[0], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _productScreen(context, product),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () {
                        if (UserModel.of(context).isLoggedIn()) {
                          CartBoticarioProduct cartBoticarioProduct =
                              CartBoticarioProduct();
                          cartBoticarioProduct.quantity = 1;
                          cartBoticarioProduct.pid = product.id;
                          cartBoticarioProduct.productData = product;

                          CartModel.of(context)
                              .addCartBoticarioItem(cartBoticarioProduct);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartBoticarioScreen()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        }
                      },
                      child: _textButton(context),
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ProductMinhaCoxinhaFavoritaScreen extends StatefulWidget {
  final ProductData product;

  ProductMinhaCoxinhaFavoritaScreen(this.product);

  @override
  _ProductMinhaCoxinhaFavoritaScreenState createState() => _ProductMinhaCoxinhaFavoritaScreenState(product);
}

class _ProductMinhaCoxinhaFavoritaScreenState extends State<ProductMinhaCoxinhaFavoritaScreen> {
  final ProductData product;

  _ProductMinhaCoxinhaFavoritaScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
        appBar: _appBar(product),
        body: ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.9,
              child: Image.network(product.images[0], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _productScreen(context, product),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () {
                        if (UserModel.of(context).isLoggedIn()) {
                          CartMinhaCoxinhaFavoritaProduct cartMinhaCoxinhaFavoritaProduct =
                              CartMinhaCoxinhaFavoritaProduct();
                          cartMinhaCoxinhaFavoritaProduct.quantity = 1;
                          cartMinhaCoxinhaFavoritaProduct.pid = product.id;
                          cartMinhaCoxinhaFavoritaProduct.productData = product;

                          CartModel.of(context)
                              .addCartMinhaCoxinhaFavoritaItem(cartMinhaCoxinhaFavoritaProduct);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartMinhaCoxinhaFavoritaScreen()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        }
                      },
                      child: _textButton(context),
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ProductMagoEspetinhoScreen extends StatefulWidget {
  final ProductData product;

  ProductMagoEspetinhoScreen(this.product);

  @override
  _ProductMagoEspetinhoScreenState createState() => _ProductMagoEspetinhoScreenState(product);
}

class _ProductMagoEspetinhoScreenState extends State<ProductMagoEspetinhoScreen> {
  final ProductData product;

  _ProductMagoEspetinhoScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
        appBar: _appBar(product),
        body: ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.9,
              child: Image.network(product.images[0], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _productScreen(context, product),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () {
                        if (UserModel.of(context).isLoggedIn()) {
                          CartMagoEspetinhoProduct cartMagoEspetinhoProduct =
                              CartMagoEspetinhoProduct();
                          cartMagoEspetinhoProduct.quantity = 1;
                          cartMagoEspetinhoProduct.pid = product.id;
                          cartMagoEspetinhoProduct.productData = product;

                          CartModel.of(context)
                              .addCartMagoEspetinhoItem(cartMagoEspetinhoProduct);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartMagoEspetinhoScreen()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        }
                      },
                      child: _textButton(context),
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ProductDindinScreen extends StatefulWidget {
  final ProductData product;

  ProductDindinScreen(this.product);

  @override
  _ProductDindinScreenState createState() => _ProductDindinScreenState(product);
}

class _ProductDindinScreenState extends State<ProductDindinScreen> {
  final ProductData product;

  _ProductDindinScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
        appBar: _appBar(product),
        body: ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.9,
              child: Image.network(product.images[0], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _productScreen(context, product),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () {
                        if (UserModel.of(context).isLoggedIn()) {
                          CartDindinProduct cartDindinProduct =
                              CartDindinProduct();
                          cartDindinProduct.quantity = 1;
                          cartDindinProduct.pid = product.id;
                          cartDindinProduct.productData = product;

                          CartModel.of(context)
                              .addCartDindinItem(cartDindinProduct);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartDindinScreen()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        }
                      },
                      child: _textButton(context),
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ProductLeChefScreen extends StatefulWidget {
  final ProductData product;

  ProductLeChefScreen(this.product);

  @override
  _ProductLeChefScreenState createState() => _ProductLeChefScreenState(product);
}

class _ProductLeChefScreenState extends State<ProductLeChefScreen> {
  final ProductData product;

  _ProductLeChefScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
        appBar: _appBar(product),
        body: ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.9,
              child: Image.network(product.images[0], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _productScreen(context, product),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () {
                        if (UserModel.of(context).isLoggedIn()) {
                          CartLeChefProduct cartLeChefProduct =
                              CartLeChefProduct();
                          cartLeChefProduct.quantity = 1;
                          cartLeChefProduct.pid = product.id;
                          cartLeChefProduct.productData = product;

                          CartModel.of(context)
                              .addCartLeChefItem(cartLeChefProduct);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartLeChefScreen()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        }
                      },
                      child: _textButton(context),
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ProductPizzaMaitaScreen extends StatefulWidget {
  final ProductData product;

  ProductPizzaMaitaScreen(this.product);

  @override
  _ProductPizzaMaitaScreenState createState() => _ProductPizzaMaitaScreenState(product);
}

class _ProductPizzaMaitaScreenState extends State<ProductPizzaMaitaScreen> {
  final ProductData product;

  _ProductPizzaMaitaScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
        appBar: _appBar(product),
        body: ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.9,
              child: Image.network(product.images[0], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _productScreen(context, product),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () {
                        if (UserModel.of(context).isLoggedIn()) {
                          CartPizzaMaitaProduct cartPizzaMaitaProduct =
                              CartPizzaMaitaProduct();
                          cartPizzaMaitaProduct.quantity = 1;
                          cartPizzaMaitaProduct.pid = product.id;
                          cartPizzaMaitaProduct.productData = product;

                          CartModel.of(context)
                              .addCartPizzaMaitaItem(cartPizzaMaitaProduct);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartPizzaMaitaScreen()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        }
                      },
                      child: _textButton(context),
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ProductLojaJScreen extends StatefulWidget {
  final ProductData product;

  ProductLojaJScreen(this.product);

  @override
  _ProductLojaJScreenState createState() => _ProductLojaJScreenState(product);
}

class _ProductLojaJScreenState extends State<ProductLojaJScreen> {
  final ProductData product;

  _ProductLojaJScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
        appBar: _appBar(product),
        body: ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.9,
              child: Image.network(product.images[0], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _productScreen(context, product),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () {
                        if (UserModel.of(context).isLoggedIn()) {
                          CartLojaJProduct cartLojaJProduct =
                              CartLojaJProduct();
                          cartLojaJProduct.quantity = 1;
                          cartLojaJProduct.pid = product.id;
                          cartLojaJProduct.productData = product;

                          CartModel.of(context)
                              .addCartLojaJItem(cartLojaJProduct);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartLojaJScreen()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        }
                      },
                      child: _textButton(context),
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ProductLojaLScreen extends StatefulWidget {
  final ProductData product;

  ProductLojaLScreen(this.product);

  @override
  _ProductLojaLScreenState createState() => _ProductLojaLScreenState(product);
}

class _ProductLojaLScreenState extends State<ProductLojaLScreen> {
  final ProductData product;

  _ProductLojaLScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
        appBar: _appBar(product),
        body: ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.9,
              child: Image.network(product.images[0], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _productScreen(context, product),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () {
                        if (UserModel.of(context).isLoggedIn()) {
                          CartLojaLProduct cartLojaLProduct =
                              CartLojaLProduct();
                          cartLojaLProduct.quantity = 1;
                          cartLojaLProduct.pid = product.id;
                          cartLojaLProduct.productData = product;

                          CartModel.of(context)
                              .addCartLojaLItem(cartLojaLProduct);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartLojaLScreen()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        }
                      },
                      child: _textButton(context),
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ProductLojaMScreen extends StatefulWidget {
  final ProductData product;

  ProductLojaMScreen(this.product);

  @override
  _ProductLojaMScreenState createState() => _ProductLojaMScreenState(product);
}

class _ProductLojaMScreenState extends State<ProductLojaMScreen> {
  final ProductData product;

  _ProductLojaMScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
        appBar: _appBar(product),
        body: ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.9,
              child: Image.network(product.images[0], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _productScreen(context, product),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () {
                        if (UserModel.of(context).isLoggedIn()) {
                          CartLojaMProduct cartLojaMProduct =
                              CartLojaMProduct();
                          cartLojaMProduct.quantity = 1;
                          cartLojaMProduct.pid = product.id;
                          cartLojaMProduct.productData = product;

                          CartModel.of(context)
                              .addCartLojaMItem(cartLojaMProduct);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartLojaMScreen()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        }
                      },
                      child: _textButton(context),
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ProductLojaNScreen extends StatefulWidget {
  final ProductData product;

  ProductLojaNScreen(this.product);

  @override
  _ProductLojaNScreenState createState() => _ProductLojaNScreenState(product);
}

class _ProductLojaNScreenState extends State<ProductLojaNScreen> {
  final ProductData product;

  _ProductLojaNScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
        appBar: _appBar(product),
        body: ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.9,
              child: Image.network(product.images[0], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _productScreen(context, product),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () {
                        if (UserModel.of(context).isLoggedIn()) {
                          CartLojaNProduct cartLojaNProduct =
                              CartLojaNProduct();
                          cartLojaNProduct.quantity = 1;
                          cartLojaNProduct.pid = product.id;
                          cartLojaNProduct.productData = product;

                          CartModel.of(context)
                              .addCartLojaNItem(cartLojaNProduct);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartLojaNScreen()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        }
                      },
                      child: _textButton(context),
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ProductLojaOScreen extends StatefulWidget {
  final ProductData product;

  ProductLojaOScreen(this.product);

  @override
  _ProductLojaOScreenState createState() => _ProductLojaOScreenState(product);
}

class _ProductLojaOScreenState extends State<ProductLojaOScreen> {
  final ProductData product;

  _ProductLojaOScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
        appBar: _appBar(product),
        body: ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.9,
              child: Image.network(product.images[0], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _productScreen(context, product),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () {
                        if (UserModel.of(context).isLoggedIn()) {
                          CartLojaOProduct cartLojaOProduct =
                              CartLojaOProduct();
                          cartLojaOProduct.quantity = 1;
                          cartLojaOProduct.pid = product.id;
                          cartLojaOProduct.productData = product;

                          CartModel.of(context)
                              .addCartLojaOItem(cartLojaOProduct);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartLojaOScreen()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        }
                      },
                      child: _textButton(context),
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ProductLojaPScreen extends StatefulWidget {
  final ProductData product;

  ProductLojaPScreen(this.product);

  @override
  _ProductLojaPScreenState createState() => _ProductLojaPScreenState(product);
}

class _ProductLojaPScreenState extends State<ProductLojaPScreen> {
  final ProductData product;

  _ProductLojaPScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
        appBar: _appBar(product),
        body: ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.9,
              child: Image.network(product.images[0], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _productScreen(context, product),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () {
                        if (UserModel.of(context).isLoggedIn()) {
                          CartLojaPProduct cartLojaPProduct =
                              CartLojaPProduct();
                          cartLojaPProduct.quantity = 1;
                          cartLojaPProduct.pid = product.id;
                          cartLojaPProduct.productData = product;

                          CartModel.of(context)
                              .addCartLojaPItem(cartLojaPProduct);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartLojaPScreen()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        }
                      },
                      child: _textButton(context),
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

/*class ProductMinhaCoxinhaFavoritaScreen extends StatefulWidget {
  final ProductData product;

  ProductMinhaCoxinhaFavoritaScreen(this.product);

  @override
  _ProductMinhaCoxinhaFavoritaScreenState createState() => _ProductMinhaCoxinhaFavoritaScreenState(product);
}

class _ProductMinhaCoxinhaFavoritaScreenState extends State<ProductMinhaCoxinhaFavoritaScreen> {
  final ProductData product;

  _ProductMinhaCoxinhaFavoritaScreenState(this.product);

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
        appBar: _appBar(product),
        body: ListView(
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.9,
              child: Image.network(product.images[0], fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  _productScreen(context, product),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 44,
                    child: RaisedButton(
                      onPressed: () {
                        if (UserModel.of(context).isLoggedIn()) {
                          CartMinhaCoxinhaFavoritaProduct cartMinhaCoxinhaFavoritaProduct =
                              CartMinhaCoxinhaFavoritaProduct();
                          cartMinhaCoxinhaFavoritaProduct.quantity = 1;
                          cartMinhaCoxinhaFavoritaProduct.pid = product.id;
                          cartMinhaCoxinhaFavoritaProduct.productData = product;

                          CartModel.of(context)
                              .addCartMagoEspetinhoItem(cartMinhaCoxinhaFavoritaProduct);

                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => CartMagoEspetinhoScreen()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                        }
                      },
                      child: _textButton(context),
                      color: primaryColor,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}*/

Widget _appBar(product) {
  return AppBar(
    title: Text(product.title),
    centerTitle: true,
  );
}

Widget _textButton(context) {
  return Text(
    UserModel.of(context).isLoggedIn()
        ? 'Adicionar ao Carrinho'
        : 'Entre para comprar',
    style: TextStyle(color: Colors.white, fontSize: 18),
  );
}

Widget _productScreen(context, product) {
  final Color primaryColor = Theme.of(context).primaryColor;

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        product.title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        maxLines: 3,
      ),
      Text(
        'R\$ ${product.price.toStringAsFixed(2)}',
        style: TextStyle(
            color: primaryColor, fontSize: 22, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 8,
      ),
      Text(
        'Descrição',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      Text(
        product.description,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
      ),
    ],
  );
}

/*Text(
                    product.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    maxLines: 3,
                  ),
                  Text(
                    'R\$ ${product.price.toStringAsFixed(2)}',
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Descrição',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    product.description,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  ),*/

/*Text(
                        UserModel.of(context).isLoggedIn()
                            ? 'Adicionar ao Carrinho'
                            : 'Entre para comprar',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),*/

/*AppBar(
          title: Text(product.title),
          centerTitle: true,
        ),*/
