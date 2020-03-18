import 'package:flutter/material.dart';


class Admin extends StatefulWidget {
  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {

  int _carTotalCells = 100;
  int _bikeTotalCells = 200;
  int _carCellsAvailable = 100;
  int _bikeCellsAvailable = 200;

  //  on production => we will get this info from the API --> just for testing <--

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: null,
        title: Text('Administrador'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(20.0),
          children: <Widget>[
            _carCard(),
            SizedBox(height: 100.0),
            _bikeCard(),
            SizedBox(height: 25.0),
            RaisedButton(
              elevation: 105.0,
              child: Text('Books'),
              textColor: Colors.white,
              color: Colors.blueGrey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
              ),
              onPressed: () => Navigator.pushNamed(context, '/books')
            )
          ],
        ),
      )
      
    );
  }


  Widget _carCard() {
    return Card(
      elevation: 25.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.directions_car),
            title: Text('Celdas disponibles para autos'),
            subtitle: Text('$_carCellsAvailable'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Icon(Icons.exposure_plus_1, color: Colors.blue),
                onPressed: () {
                  setState(() {
                    if (_carCellsAvailable < _carTotalCells){
                      _carCellsAvailable++;
                    }
                  });

                },
              ),
              FlatButton(
                child: Icon(Icons.exposure_neg_1, color: Colors.blue),
                onPressed: () {
                  setState(() {
                    if (_carCellsAvailable > 0){
                      _carCellsAvailable--;
                    }
                  });
                },
              )
            ],
          ),
        ]
      ),
    );
  }

  _bikeCard() {
    return Card(
      elevation: 25.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.motorcycle),
            title: Text('Celdas disponibles para motos'),
            subtitle: Text('$_bikeCellsAvailable'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Icon(Icons.exposure_plus_1, color: Colors.blue),
                onPressed: () {
                  setState(() {
                    if (_bikeCellsAvailable < _bikeTotalCells){
                      _bikeCellsAvailable++;
                    }
                  });
                },
              ),
              FlatButton(
                child: Icon(Icons.exposure_neg_1, color: Colors.blue),
                onPressed: () {
                  setState(() {
                    if(_bikeCellsAvailable > 0){
                      _bikeCellsAvailable--;
                    }
                  });
                },
              )
            ],
          ),
        ]
      ),
    );
  }
}