
import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _agree=false;
  bool _aceptar=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Contact US",
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              "Contactate"
          ),
        ),
        body: Column(
          children: <Widget>[
            Text(
              "Contactanos",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold,),
            ),
            Text(
              "E-mail:",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Ingrese su E-mail",
              ),
            ),
            Text(
              "Telefono:",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),

            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Ingrese su Telefono"
              ),
            ),
            Text(
              "Mensaje:",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,),
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Redacte su Mensaje",
              ),
            ),
            Row(
              children: <Widget>[
                Checkbox(value: _agree, onChanged: (ischecked){
                  setState(() {
                    _agree=ischecked;
                  });
                }),
                Text("Envíe una copia a usted mismo"),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(value: _aceptar, onChanged: (inspeccionado){
                  setState(() {
                    _aceptar=inspeccionado;
                  });
                }),
                Text("Suscríbete a nuestro nuevo boletín"),
              ],
            ),
            FlatButton(
              child: Text("Enviar",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.deepOrange,
              onPressed: (){},
            ),
            Text(
              "(Required Fields)",
              style: TextStyle(fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}

