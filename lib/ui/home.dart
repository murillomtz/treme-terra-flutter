import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//import 'package:intl/intl.dart';
//import 'package:intl/date_symbol_data_local.dart';

Map _tremores;
List _features;

class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text("TremyTerra App"),
    backgroundColor: Colors.deepOrange,
    ),
    backgroundColor: Colors.white,
    body: Center(
    child: ListView.builder(
    itemCount: _tremores.length,
    itemBuilder:(BuildContext context, int posicao) {}
    ,
    )
    ,

    ));
  }

}
//Coletando Json da URL
//JSON COMEÇA COM '{' LOGO DEVE SER CONSUMIDO POR UM MAP
_getJson() async {
  String url = 'https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson';

  http.Response response = await http.get(url);
  _tremores = await json.decode(response.body);
}





