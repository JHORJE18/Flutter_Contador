import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // Estilos
  final TextStyle estiloTexto = new TextStyle(fontSize: 25.0);

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
              Text('0', style: estiloTexto)
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ));
  }
}
