// This page displays the books
// Allows the user to accept the books or not


import 'package:flutter/material.dart';

class Books extends StatefulWidget {
  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Books'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _card1(context),
          SizedBox(height: 20.0),
          _card2(context),
        ],
      ),
      
    );
  }

  _card1(BuildContext context) {
    var _datetimeCard1 = DateTime.now();
    return Card(
      elevation: 25.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.motorcycle, color: Colors.blue),
            title: Text('Santiago Agudelo'),
            subtitle: Text('Tipo de vehiculo: Moto\n Ingreso de vehiculo: 16:00 \n Book recibido: $_datetimeCard1'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Confirmar'),
                onPressed: _showAlert,
              )
            ],
          ),
        ]
      ),
    );
  }

  _card2(BuildContext context) {
    var _dateTimecard2 = DateTime.now();
    return Card(
      elevation: 25.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.directions_car, color: Colors.blue),
            title: Text('Diomedes Diaz'),
            subtitle: Text('Tipo de vehiculo: Auto\n Hora de ingreso: 18:00 \n Book recibido: $_dateTimecard2'),
            
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Confirmar'),
                onPressed: _showAlert,
              )
            ],
          ),
        ]
      ),
    );
  }

  void _showAlert(){
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {

        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Confirmado!'),
          content: Column(
          mainAxisSize: MainAxisSize.min, 
          children: <Widget>[
            FlutterLogo(size: 100)
          ], 
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Ok'),
              onPressed: () => Navigator.pushNamed(context, '/admin'), 
              )
          ],
        );

      }
    );
  }
}