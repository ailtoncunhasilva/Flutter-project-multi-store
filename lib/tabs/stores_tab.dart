import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_morenope/datas/product_data.dart';
import 'package:delivery_morenope/screens/cart_screen.dart';
import 'package:delivery_morenope/screens/orderstore_screen.dart';
import 'package:delivery_morenope/tiles/product_tile.dart';
import 'package:flutter/material.dart';

final BoxDecoration decoration = BoxDecoration(
  color: Colors.white,
  border: Border.all(color: Colors.white, width: 1),
  borderRadius: BorderRadius.circular(15),
);

final Text text = Text('MEUS\nPEDIDOS', textAlign: TextAlign.center);

class StoreDalenaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'DaLena\nHamburgueria',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: decoration,
              child: FlatButton(
                child: text,
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrdersDalenaScreen()));
                },
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('store06').getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            else
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return ProductDalenaTile(ProductData.fromDocument(
                        snapshot.data.documents[index]));
                  });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CartDalenaScreen()));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class StoreDeliciaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pizzaria Delícia',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: decoration,
              child: FlatButton(
                child: text,
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrdersDeliciaScreen()));
                },
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('store02').getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            else
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return ProductDeliciaTile(ProductData.fromDocument(
                        snapshot.data.documents[index]));
                  });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CartDeliciaScreen()));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class StoreDindinTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dindin das Dindas',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: decoration,
              child: FlatButton(
                child: text,
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrdersDindinScreen()));
                },
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('store07').getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            else
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return ProductDindinTile(ProductData.fromDocument(
                        snapshot.data.documents[index]));
                  });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CartDindinScreen()));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class StoreMagoEspetinhoTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mago do Espetinho',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: decoration,
              child: FlatButton(
                child: text,
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrdersMagoEspetinhoScreen()));
                },
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('store05').getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            else
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return ProductMagoEspetinhoTile(ProductData.fromDocument(
                        snapshot.data.documents[index]));
                  });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CartMagoEspetinhoScreen()));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class StorePalhocaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'O Palhoção',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: decoration,
              child: FlatButton(
                child: text,
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrdersPalhocaScreen()));
                },
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('store01').getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            else
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return ProductPalhocaTile(ProductData.fromDocument(
                        snapshot.data.documents[index]));
                  });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CartPalhocaScreen()));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class StoreBoticarioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'O Boticário',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: decoration,
              child: FlatButton(
                child: text,
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrdersBoticarioScreen()));
                },
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('store03').getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            else
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return ProductBoticarioTile(ProductData.fromDocument(
                        snapshot.data.documents[index]));
                  });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CartBoticarioScreen()));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class StoreMinhaCoxinhaFavoritaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Minha\nCoxinha Favorita',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: decoration,
              child: FlatButton(
                child: text,
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          OrdersMinhaCoxinhaFavoritaScreen()));
                },
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('store04').getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            else
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return ProductMinhaCoxinhaFavoritaTile(
                        ProductData.fromDocument(
                            snapshot.data.documents[index]));
                  });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CartMinhaCoxinhaFavoritaScreen()));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class StoreLeChefTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chef',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: decoration,
              child: FlatButton(
                child: text,
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrdersLeChefScreen()));
                },
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('store08').getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            else
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return ProductLeChefTile(ProductData.fromDocument(
                        snapshot.data.documents[index]));
                  });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CartLeChefScreen()));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class StorePizzaMaitaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pizza Maita',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: decoration,
              child: FlatButton(
                child: text,
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrdersPizzaMaitaScreen()));
                },
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('store09').getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            else
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return ProductPizzaMaitaTile(ProductData.fromDocument(
                        snapshot.data.documents[index]));
                  });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => CartPizzaMaitaScreen()));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class StoreLojaJTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sabores Delicia',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: decoration,
              child: FlatButton(
                child: text,
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrdersLojaJScreen()));
                },
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('store10').getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            else
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return ProductLojaJTile(ProductData.fromDocument(
                        snapshot.data.documents[index]));
                  });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CartLojaJScreen()));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class StoreLojaLTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pague Pouco',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: decoration,
              child: FlatButton(
                child: text,
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrdersLojaLScreen()));
                },
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('store11').getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            else
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return ProductLojaLTile(ProductData.fromDocument(
                        snapshot.data.documents[index]));
                  });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CartLojaLScreen()));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class StoreLojaMTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sabores do Pão',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: decoration,
              child: FlatButton(
                child: text,
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrdersLojaMScreen()));
                },
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('store12').getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            else
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return ProductLojaMTile(ProductData.fromDocument(
                        snapshot.data.documents[index]));
                  });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CartLojaMScreen()));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class StoreLojaNTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'João Ferragens',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: decoration,
              child: FlatButton(
                child: text,
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrdersLojaNScreen()));
                },
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('store13').getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            else
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return ProductLojaNTile(ProductData.fromDocument(
                        snapshot.data.documents[index]));
                  });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CartLojaNScreen()));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class StoreLojaOTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tô Perto de Casa',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: decoration,
              child: FlatButton(
                child: text,
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrdersLojaOScreen()));
                },
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('store14').getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            else
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return ProductLojaOTile(ProductData.fromDocument(
                        snapshot.data.documents[index]));
                  });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CartLojaOScreen()));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

class StoreLojaPTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Happylândia',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: decoration,
              child: FlatButton(
                child: text,
                textColor: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => OrdersLojaPScreen()));
                },
              ),
            ),
          )
        ],
      ),
      body: FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection('store15').getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(child: CircularProgressIndicator());
            else
              return ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context, index) {
                    return ProductLojaPTile(ProductData.fromDocument(
                        snapshot.data.documents[index]));
                  });
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CartLojaPScreen()));
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}

/*class StorePizzaMaitaTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DaLena\nHamburgueria', style: TextStyle(
          fontSize: 20,
          color: Colors.white
        ),
       ),
       actions: <Widget>[
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             decoration: BoxDecoration(
               border: Border.all(color: Colors.white, width: 2),
               borderRadius: BorderRadius.circular(15)
             ),
             child: FlatButton(
               child: text,
               textColor: Theme.of(context).primaryColor,
               onPressed: (){
                 Navigator.of(context).push(
                   MaterialPageRoute(builder: (context)=>OrdersMudarScreen())
                 );                
               },
             ),
           ),
         )
       ],
      ),
      body: FutureBuilder<QuerySnapshot>(
        future: Firestore.instance.collection('mudar').getDocuments(),
        builder: (context, snapshot){
          if(!snapshot.hasData)
          return Center(child: CircularProgressIndicator());
          else
          return ListView.builder(
            itemCount: snapshot.data.documents.length,
            itemBuilder: (context, index){
              return ProductMudarTile(
                ProductData.fromDocument(snapshot.data.documents[index])
              );
            }
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => CartMudarScreen())
          );
        },
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}*/
