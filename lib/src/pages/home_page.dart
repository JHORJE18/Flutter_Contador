import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle estiloTexto = new TextStyle(fontSize: 25.0);
  final int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo 🖐'),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Número de clicks:', style: estiloTexto),
            Text('$contador', style: estiloTexto)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hola Mundo');
        },
        child: Icon(Icons.bookmark_border),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
