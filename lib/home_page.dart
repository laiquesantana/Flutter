// todos os widgets possuem um método build que retorna os widegts responsaveis pela tela ( widget text)
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Help Psicólogo",
        ),
        centerTitle: true, // centralizar titulo
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {

    Size size = MediaQuery.of(context).size; // pega altura e largura da tela

    return Container(
        height: size.height, // mecher na altura do container para poder afetar o crossAxisAligment
        width: size.width, // mecher na altura do container para poder afetar o crossAxisAligment
        color: Colors.yellow,
        child: Row(
          mainAxisSize: MainAxisSize.max, // padrão
          mainAxisAlignment: MainAxisAlignment.center , //eixo principal, padrão start
          crossAxisAlignment: CrossAxisAlignment.end, // alinhamento de uma lima ou coluna no eixo cruzado , padrão é center
          children: <Widget>[
            _button(),
            _button(),
            _button(),
          ],
        ) //SizedBox.expand
        );
  }

  _button() {
    return RaisedButton(
      child: Text(
        "Ok",
        style: TextStyle(color: Colors.white,
          fontSize: 30
        ),
      ),
      color: Colors.blueAccent,
      onPressed: () => _onClickOk()

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

  _img() {
    return Image.asset(
      'assets/images/capa2.jpeg',
      fit: BoxFit.fill,
    );
  }

 void _onClickOk() {
    print("clicou no botao!");
  }
}
