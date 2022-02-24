// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:appex/HomePage.dart';
import 'package:appex/ReviewsPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyDrawerApp extends StatelessWidget {
  const MyDrawerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      drawer: DrawerCodeOnly(),
      appBar: new AppBar(
        title: new Text("Criptomonedas"),
      ),
    );
  }
}

class DrawerCodeOnly extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new DrawerHeader(
            child: const Text(
              "Noticias sobre Criptomonedas",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
            ),
            decoration: new BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          new ListTile(
            title: new Text("Inicio Principal"),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new MyApp()));
            },
          ),
          new ListTile(
            title: new Text("Bitcoin"),
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new BitcoinPage()));
            },
          ),
          new ListTile(
            title: new Text("ETH "),
            onTap: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => new ETHPage()));
            },
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Bienvenidos a la aplicacion de Criptomonedas',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Por: Emmanuel Tobon Ramirez',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Bitcoin es una criptomoneda, un tipo de moneda digital y un sistema de pago '
        'sin banco central o administrador unico. Teniendo una seguridad conocida como '
        'cadena de bloques o blockchain que impide el doble gasto o la falsificacion de dinero '
        'a cambio de dicho trabajo, el protocolo de red de bitcoin recompensa a los computadores '
        'verificadores creando nuevos bitcoins. Es conocido como Mineria de Bitcoin. '
        'Fue creada en el año 2008 por una entiedad conocida bajo el seudónimo de Satoshi Nakamoto.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      home: Scaffold(
        drawer: new DrawerCodeOnly(),
        appBar: AppBar(
          title: Text('Noticias Criptomonedas'),
          backgroundColor: Colors.grey,
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/btc.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
