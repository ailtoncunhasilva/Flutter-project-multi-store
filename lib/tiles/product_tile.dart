import 'package:delivery_morenope/datas/product_data.dart';
import 'package:delivery_morenope/screens/product_screen.dart';
import 'package:flutter/material.dart';

class ProductDalenaTile extends StatelessWidget {
  final ProductData product;

  ProductDalenaTile(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductDalenaScreen(product)));
      },
      child: _productTile(context, product),
    );
  }
}

class ProductDeliciaTile extends StatelessWidget {
  final ProductData product;

  ProductDeliciaTile(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductDeliciaScreen(product)));
      },
      child: _productTile(context, product),
    );
  }
}

class ProductPalhocaTile extends StatelessWidget {
  final ProductData product;

  ProductPalhocaTile(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductPalhocaScreen(product)));
      },
      child: _productTile(context, product),
    );
  }
}

class ProductBoticarioTile extends StatelessWidget {
  final ProductData product;

  ProductBoticarioTile(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductBoticarioScreen(product)));
      },
      child: _productTile(context, product),
    );
  }
}

class ProductMinhaCoxinhaFavoritaTile extends StatelessWidget {
  final ProductData product;

  ProductMinhaCoxinhaFavoritaTile(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductMinhaCoxinhaFavoritaScreen(product)));
      },
      child: _productTile(context, product),
    );
  }
}

class ProductMagoEspetinhoTile extends StatelessWidget {
  final ProductData product;

  ProductMagoEspetinhoTile(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductMagoEspetinhoScreen(product)));
      },
      child: _productTile(context, product),
    );
  }
}

class ProductDindinTile extends StatelessWidget {
  final ProductData product;

  ProductDindinTile(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductDindinScreen(product)));
      },
      child: _productTile(context, product),
    );
  }
}

class ProductLeChefTile extends StatelessWidget {
  final ProductData product;

  ProductLeChefTile(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductLeChefScreen(product)));
      },
      child: _productTile(context, product),
    );
  }
}

class ProductPizzaMaitaTile extends StatelessWidget {
  final ProductData product;

  ProductPizzaMaitaTile(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductPizzaMaitaScreen(product)));
      },
      child: _productTile(context, product),
    );
  }
}

class ProductLojaJTile extends StatelessWidget {
  final ProductData product;

  ProductLojaJTile(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductLojaJScreen(product)));
      },
      child: _productTile(context, product),
    );
  }
}

class ProductLojaLTile extends StatelessWidget {
  final ProductData product;

  ProductLojaLTile(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductLojaLScreen(product)));
      },
      child: _productTile(context, product),
    );
  }
}

class ProductLojaMTile extends StatelessWidget {
  final ProductData product;

  ProductLojaMTile(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductLojaMScreen(product)));
      },
      child: _productTile(context, product),
    );
  }
}

class ProductLojaNTile extends StatelessWidget {
  final ProductData product;

  ProductLojaNTile(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductLojaNScreen(product)));
      },
      child: _productTile(context, product),
    );
  }
}

class ProductLojaOTile extends StatelessWidget {
  final ProductData product;

  ProductLojaOTile(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductLojaOScreen(product)));
      },
      child: _productTile(context, product),
    );
  }
}

class ProductLojaPTile extends StatelessWidget {
  final ProductData product;

  ProductLojaPTile(this.product);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductLojaPScreen(product)));
      },
      child: _productTile(context, product),
    );
  }
}

Widget _productTile(BuildContext context, ProductData product) {
  return Card(
      child: Container(
    height: 100,
    child: Row(
      children: <Widget>[
        Container(child: Image.network(product.images[0], fit: BoxFit.cover)),
        Expanded(
            child: Container(
          padding: EdgeInsets.only(top: 24, left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                product.title,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
              Text(
                'R\$ ${product.price.toStringAsFixed(2)}',
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ))
      ],
    ),
  ));
}

/*Widget _productTileTwo(context, product) {
  return Card(
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
      AspectRatio(
        aspectRatio: 0.8,
        child: Image.network(product.images[0], fit: BoxFit.cover),
      ),
      Expanded(
          child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Text(
              product.title,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Text(
              'R\$ ${product.price.toStringAsFixed(2)}',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ))
    ],
  ));
}*/
