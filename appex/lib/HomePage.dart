// ignore_for_file: prefer_const_constructors

import 'package:appex/main.dart';
import 'package:flutter/material.dart';



class BitcoinPage extends StatelessWidget {
  const BitcoinPage({Key? key}) : super(key: key);

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
                    'Bitcoin, en caída: pierde 7,500 dólares en dos días',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Fuente: forbes.com.mx',
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
        children: [
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'El bitcoin cotizó ayer en 38,803 dólares tras caer ese 7.6% desde 41,994 dólares '
            ', con lo que se situó en su nivel más bajo desde principios de agosto de 2021. '
            'Con su cotización actual, el bitcoin se encuentra en un nivel similar desde '
            'el mínimo de este año de 34,000 dólares alcanzado el 22 de enero. '
            'El éter, la moneda vinculada a la red blockchain de ethereum,  '
            ' cae este sábado 8.4% a 2,352.72 dólares, con una pérdida de 189.64 dólares desde su cierre anterior.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        drawer: new DrawerCodeOnly(),
        appBar: AppBar(
          title: Text('Bitcoin Noticias'),
          backgroundColor: Colors.grey,
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/bitcoin.jpg',
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