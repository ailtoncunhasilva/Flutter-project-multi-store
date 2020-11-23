import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivery_morenope/tabs/stores_tab.dart';
import 'package:flutter/material.dart';

class ApalhocaTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('statusStore')
            .document('statusLoja01')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 4, right: 10),
                  child: InkWell(
                      onTap: snapshot.data['status'] == false
                          ? null
                          : () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => StorePalhocaTab()));
                            },
                      child: _buildItens(context, 'images/lojaA.jpg',
                          'Restaurante e Pizzaria', 'O Palhoção')),
                ),
                _textStatus(snapshot),
              ],
            );
          }
        });
  }
}

class DeliciaTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('statusStore')
            .document('statusLoja02')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 4, right: 10),
                  child: InkWell(
                    onTap: snapshot.data['status'] == false
                        ? null
                        : () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => StoreDeliciaTab()));
                          },
                    child: _buildItens(context, 'images/lojaB.jpg',
                        'Restaurante e Pizzaria', 'Pizzaria Deliciosa'),
                  ),
                ),
                _textStatus(snapshot),
              ],
            );
          }
        });
  }
}

class OboticarioTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('statusStore')
            .document('statusLoja03')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 4, right: 10),
                  child: InkWell(
                      onTap: snapshot.data['status'] == false
                          ? null
                          : () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => StoreBoticarioTab()));
                            },
                      child: _buildItens(context, 'images/lojaC.jpg',
                          'Perfumaria', 'O Boticário')),
                ),
                _textStatus(snapshot),
              ],
            );
          }
        });
  }
}

class MinhaCoxinhaFavoritaTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('statusStore')
            .document('statusLoja04')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 4, right: 10),
                  child: InkWell(
                      onTap: snapshot.data['status'] == false
                          ? null
                          : () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      StoreMinhaCoxinhaFavoritaTab()));
                            },
                      child: _buildItens(context, 'images/lojaD.jpg',
                          'Lanchonete', 'Minha\nEmpada Favorita')),
                ),
                _textStatus(snapshot),
              ],
            );
          }
        });
  }
}

class MagoEspetionhoTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('statusStore')
            .document('statusLoja05')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 4, right: 10),
                  child: InkWell(
                      onTap: snapshot.data['status'] == false
                          ? null
                          : () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      StoreMagoEspetinhoTab()));
                            },
                      child: _buildItens(context, 'images/lojaE.jpg',
                          'Espetinho', 'Magão do Espetinho')),
                ),
                _textStatus(snapshot),
              ],
            );
          }
        });
  }
}

class DaLenaTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('statusStore')
            .document('statusLoja06')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 4, right: 10),
                  child: InkWell(
                      onTap: snapshot.data['status'] == false
                          ? null
                          : () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => StoreDalenaTab()));
                            },
                      child: _buildItens(context, 'images/lojaF.jpg',
                          'Hamburgueria', 'Helena\nHamburgueria')),
                ),
                _textStatus(snapshot),
              ],
            );
          }
        });
  }
}

class DindinTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('statusStore')
            .document('statusLoja07')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 4, right: 10),
                  child: InkWell(
                      onTap: snapshot.data['status'] == false
                          ? null
                          : () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => StoreDindinTab()));
                            },
                      child: _buildItens(context, 'images/lojaG.jpg',
                          'Lanchonete', 'Gourmet')),
                ),
                _textStatus(snapshot),
              ],
            );
          }
        });
  }
}

class PizzaMaitaTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('statusStore')
            .document('statusLoja09')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 4, right: 10),
                  child: InkWell(
                      onTap: snapshot.data['status'] == false
                          ? null
                          : () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => StorePizzaMaitaTab()));
                            },
                      child: _buildItens(context, 'images/lojaI.jpg',
                          'Pizzaria Delivery', 'Pizza Oxente')),
                ),
                _textStatus(snapshot),
              ],
            );
          }
        });
  }
}

class LeChefTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('statusStore')
            .document('statusLoja08')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 4, right: 10),
                  child: InkWell(
                      onTap: snapshot.data['status'] == false
                          ? null
                          : () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => StoreLeChefTab()));
                            },
                      child: _buildItens(
                          context, 'images/lojaH.jpg', 'Pizzaria', 'Chef')),
                ),
                _textStatus(snapshot),
              ],
            );
          }
        });
  }
}

class LojaJ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('statusStore')
            .document('statusLoja10')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 4, right: 10),
                  child: InkWell(
                      onTap: snapshot.data['status'] == false
                          ? null
                          : () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => StoreLojaJTab()));
                            },
                      child: _buildItens(context, 'images/lojaJ.jpg', 'Doceria',
                          'Sabores Delícia')),
                ),
                _textStatus(snapshot),
              ],
            );
          }
        });
  }
}

class LojaL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('statusStore')
            .document('statusLoja11')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 4, right: 10),
                  child: InkWell(
                      onTap: snapshot.data['status'] == false
                          ? null
                          : () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => StoreLojaLTab()));
                            },
                      child: _buildItens(context, 'images/lojaL.jpg',
                          'Farmácia', 'Pague Pouco')),
                ),
                _textStatus(snapshot),
              ],
            );
          }
        });
  }
}

class LojaM extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('statusStore')
            .document('statusLoja12')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 4, right: 10),
                  child: InkWell(
                      onTap: snapshot.data['status'] == false
                          ? null
                          : () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => StoreLojaMTab()));
                            },
                      child: _buildItens(context, 'images/lojaM.jpg', 'Padaria',
                          'Sabores do Pão')),
                ),
                _textStatus(snapshot),
              ],
            );
          }
        });
  }
}

class LojaN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('statusStore')
            .document('statusLoja13')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {}
          return Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10, top: 4, right: 10),
                child: InkWell(
                    onTap: snapshot.data['status'] == false
                        ? null
                        : () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => StoreLojaNTab()));
                          },
                    child: _buildItens(context, 'images/lojaN.jpg', 'Armazém',
                        'João Ferragens')),
              ),
              _textStatus(snapshot),
            ],
          );
        });
  }
}

class LojaO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('statusStore')
            .document('statusLoja14')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 4, right: 10),
                  child: InkWell(
                      onTap: snapshot.data['status'] == false
                          ? null
                          : () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => StoreLojaOTab()));
                            },
                      child: _buildItens(context, 'images/lojaO.jpg', 'Bar',
                          'Tô Perto de Casa')),
                ),
                _textStatus(snapshot),
              ],
            );
          }
        });
  }
}

class LojaP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: Firestore.instance
            .collection('statusStore')
            .document('statusLoja15')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 4, right: 10),
                  child: InkWell(
                      onTap: snapshot.data['status'] == false
                          ? null
                          : () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => StoreLojaPTab()));
                            },
                      child: _buildItens(context, 'images/lojaP.jpg',
                          'Papelaria', 'Happylândia')),
                ),
                _textStatus(snapshot),
              ],
            );
          }
        });
  }
}

Widget _buildItens(context, imgStore, preName, storeName) {
  return Padding(
      padding: EdgeInsets.all(4),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
                child: Row(children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imgStore)),
                  border: Border.all(
                      color: Colors.grey[400],
                      style: BorderStyle.solid,
                      width: 1),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(preName,
                      style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                  Text(
                    storeName,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800]),
                  ),
                ],
              ),
            ])),
          ],
        ),
      ));
}

Widget _textStatus(snapshot) {
  return Text(
    snapshot.data['status'] == true
        ? 'Estabelecimento ABERTO'
        : 'Estabelecimento FECHADO',
    style: TextStyle(
        fontWeight: FontWeight.bold,
        color: snapshot.data['status'] == true
            ? Colors.greenAccent[700]
            : Colors.red),
  );
}
