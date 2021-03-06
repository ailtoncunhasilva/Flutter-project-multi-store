import 'package:delivery_morenope/models/user_model.dart';
import 'package:delivery_morenope/screens/login_screen.dart';
import 'package:delivery_morenope/screens/profile_screen.dart';
import 'package:delivery_morenope/tiles/stores_tile.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

final BoxShadow shadow = BoxShadow(
  color: Colors.blue[900],
  offset: Offset(3, -2),
  blurRadius: 6,
  spreadRadius: 6,
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 14,
            backgroundColor: Colors.transparent,
            title: MyAppBar(),
            pinned: true,
            expandedHeight: 160,
            flexibleSpace: FlexibleSpaceBar(
              background: MyFlexibleAppBar(),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            ApalhocaTile(),
            Divider(
              color: primaryColor,
              height: 2,
            ),
            DeliciaTile(),
            Divider(
              color: primaryColor,
              height: 2,
            ),
            OboticarioTile(),
            Divider(
              color: primaryColor,
              height: 2,
            ),
            MinhaCoxinhaFavoritaTile(),
            Divider(
              color: primaryColor,
              height: 2,
            ),
            MagoEspetionhoTile(),
            Divider(
              color: primaryColor,
              height: 2,
            ),
            DaLenaTile(),
            Divider(
              color: primaryColor,
              height: 2,
            ),
            DindinTile(),
            Divider(
              color: primaryColor,
              height: 2,
            ),
            LeChefTile(),
            Divider(
              color: primaryColor,
              height: 2,
            ),
            PizzaMaitaTile(),
            Divider(
              color: primaryColor,
              height: 2,
            ),
            LojaJ(),
            Divider(
              color: primaryColor,
              height: 2,
            ),
            LojaL(),
            Divider(
              color: primaryColor,
              height: 2,
            ),
            LojaM(),
            Divider(
              color: primaryColor,
              height: 2,
            ),
            LojaN(),
            Divider(
              color: primaryColor,
              height: 2,
            ),
            LojaO(),
            Divider(
              color: primaryColor,
              height: 2,
            ),
            LojaP()
          ]))
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child:
        ScopedModelDescendant<UserModel>(builder: (context, child, model) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Olá, ${!model.isLoggedIn() ? "" : model.userData['name']}',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      shadows: [shadow],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 6),
                    child: !model.isLoggedIn()
                        ? null
                        : IconButton(
                            icon: Icon(Icons.account_circle, size: 30),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ProfileScreen(model)));
                            }),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(15)),
            child: GestureDetector(
              child: Text(!model.isLoggedIn() ? 'Entre ou cadastre-se' : 'Sair',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    shadows: [shadow],
                  )),
              onTap: () {
                if (!model.isLoggedIn())
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                else
                  model.signOut();
              },
            ),
          )
        ],
      );
    }));
  }
}

class MyFlexibleAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/imagemmoreno3.jpg'), fit: BoxFit.cover),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 16, bottom: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'Shopping/Delivery',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18,
                              shadows: [shadow],
                            ),
                          ),
                          Text(
                            'Moreno-PE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Anton',
                              shadows: [shadow],
                            ),
                          )
                        ]),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10, bottom: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'AC',
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: [shadow],
                          ),
                        ),
                        Container(
                          height: 1,
                          width: 44,
                          color: Colors.white,
                        ),
                        Text(
                          'mobile',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'SansitaSwashed',
                            shadows: [shadow],
                          ),
                        ),
                        SizedBox(height: 1),
                        Container(
                          height: 1,
                          width: 44,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Center(
                child: Icon(Icons.expand_less, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
