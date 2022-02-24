// ignore_for_file: prefer_const_constructors
import 'package:appex/main.dart';
import 'package:flutter/material.dart';



class ETHPage extends StatelessWidget {
  const ETHPage({Key? key}) : super(key: key);

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
                    'El cofundador de Ethereum advierte sobre el comienzo de un criptoinvierno',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Fuente : actualidad.rt.com',
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
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'El programador ruso-canadiense Vitálik Buterin, cofundador del sistema de cadenas de bloques Ethereum,  '
            'anunció el sábado que el criptoinvierno (periodo prolongado de caída de precios) ha comenzado '
            'y que podría resultar beneficioso al sector de las criptodivisas. '
            'Los precios de las criptomonedas se han desplomado desde que alcanzaron máximos históricos a principios de noviembre,  '
            'ya que los inversores y los especuladores anticipan una reducción de las enormes cantidades de estímulo agregado a las economías  '
            'y los mercados globales a raíz de la pandemia de covid-19.'
            'Por otra parte, el anterior criptoinvierno se registró a principios de 2018, '
            'después de que el bitcóin alcanzara la cifra de los 20.000 dólares '
            'y cayera durante dos meses un 70% a 5.900 dólares. ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        drawer: new DrawerCodeOnly(),
        appBar: AppBar(
          title: Text('ETH Noticias'),
          backgroundColor: Colors.grey,
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/eth.jpg',
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