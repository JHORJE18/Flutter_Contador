import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _estiloTexto = new TextStyle(fontSize: 25.0);
  final TextStyle _estiloContador =
      new TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful 🖐'),
        centerTitle: true,
        elevation: 10.0,
        backgroundColor: Colors.black54,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Número de clicks:', style: _estiloTexto),
            Text('$_contador', style: _estiloContador),
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _crearBotones() {
    return Row(
      children: [
        FloatingActionButton(
          onPressed: _removeCounter,
          child: Icon(Icons.remove_circle_outline),
          backgroundColor: Colors.red,
        ),
        FloatingActionButton(
          onPressed: _resetCounter,
          child: Icon(Icons.exposure_zero),
          backgroundColor: Colors.black54,
        ),
        FloatingActionButton(
          onPressed: _addCounter,
          child: Icon(Icons.add_circle_outline),
          backgroundColor: Colors.green,
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    );
  }

  void _addCounter() {
    setState(() => _contador++);
  }

  void _removeCounter() {
    setState(() => _contador--);
  }

  void _resetCounter() {
    setState(() => _contador = 0);
  }
}
