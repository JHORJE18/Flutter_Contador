import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _estiloTexto = new TextStyle(fontSize: 25.0);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful 🖐'),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Número de clicks:', style: _estiloTexto),
            Text('$_contador', style: _estiloTexto)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _contador++;

          setState(() {});
        },
        child: Icon(Icons.bookmark_border),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
