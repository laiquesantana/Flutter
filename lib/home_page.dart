// todos os widgets possuem um método build que retorna os widegts responsaveis pela tela ( widget text)
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello Flutter",
        ),
        centerTitle: true, // centralizar titulo
      ),
      body: _body(),
    );
  }
}

_body() {
  return Container(
    color: Colors.white,
    child: Center(
      child: _text(),
    ),
  );
}

_text() {
  return Text("Hello World",
      style: TextStyle(
        fontSize: 30,
        color: Colors.cyanAccent,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.dashed,
      ));
}
