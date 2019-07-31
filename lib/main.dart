// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.amber),
        home: HomePage()
    );
  }


}


// todos os widgets possuem um método build que retorna os widegts responsaveis pela tela
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
          centerTitle: true, // centralizar titulo
        ),
        body: Container(
          color: Colors.white,
        ),
      );
  }
}
