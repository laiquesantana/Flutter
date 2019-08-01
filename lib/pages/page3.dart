import 'package:flutter/material.dart';
import 'package:myapp/widgets/blue_button.dart';

class HelloPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page3"),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Center(
      child: BlueButton("voltar", onPressedButton: () => _onClickVoltar(context)),
    );
  }

  _onClickVoltar(context) {
    Navigator.pop(context,"tela 3");
  }
}
