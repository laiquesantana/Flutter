import 'package:flutter/material.dart';
import 'package:myapp/widgets/blue_button.dart';

class HelloPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page2"),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Center(
      child: BlueButton(
        "voltar",
        onPressedButton: () => _onClickReturn(context),
        color: Colors.red,
      ),
    );
  }

  _onClickReturn(context) {
    Navigator.pop(context, "tela2");
  }
}
