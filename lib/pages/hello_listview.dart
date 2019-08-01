import 'package:flutter/material.dart';

class HelloListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: _body(),
    );
  }

  _body() {
    return ListView(
      children: <Widget>[
        _img('assets/images/capa2.jpeg'),
        _img('assets/images/capa.jpeg')
      ],
    );
  }

  _img(String path) {
    return Image.asset(
      path,
      fit: BoxFit.contain,
    );
  }

}
