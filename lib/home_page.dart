// todos os widgets possuem um método build que retorna os widegts responsaveis pela tela ( widget text)
import 'package:flutter/material.dart';
import 'package:myapp/pages/page1.dart';
import 'package:myapp/pages/page2.dart';
import 'package:myapp/pages/page3.dart';

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

  _body( BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          _pageView(),
          _buttons(context),
        ],
      ),
    );
  }

   _pageView() {
    return Container(
          margin: EdgeInsets.only(top: 20,bottom: 20),
          height: 300,
          child: PageView(
            children: <Widget>[
              _img('assets/images/capa2.jpeg'),
              _img('assets/images/capa.jpeg')
            ],
          ),
        );
  }

   _buttons(BuildContext context) {
    return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _button(context,"ListViews",()=> _onClickNavigator(context,HelloPage1())),
                _button(context,"Page2",()=> _onClickNavigator(context,HelloPage2())),
                _button(context,"Page3",()=> _onClickNavigator(context,HelloPage3())),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[_button(context,"Snack",_onClickSnack), _button(context,"Dialog",_onClickDialog), _button(context,"Toast",_onClickToast)],
            )
          ],
        );
  }

  void _onClickNavigator(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return page;
    })); // navegar de telas
  }

  _onClickSnack() {
  }

  _onClickDialog() {
  }

  _onClickToast() {
  }


  _button( BuildContext context,String msg, Function onPressedButton) {
    return RaisedButton(
        color: Colors.blueAccent,
        child: Text(
          msg,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),

        onPressed:onPressedButton,
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

  _img(String path) {
    return Image.asset(
      path,
      fit: BoxFit.fill,
    );
  }




}


/*

  _bodyColumns(BuildContext context) {
    Size size = MediaQuery.of(context).size; // pega altura e largura da tela

    return Container(
        height: size.height,
        // mecher na altura do container para poder afetar o crossAxisAligment
        width: size.width,
        // mecher na altura do container para poder afetar o crossAxisAligment
        color: Colors.yellow,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          // padrão
          mainAxisAlignment: MainAxisAlignment.center,
          //eixo principal, padrão start
          crossAxisAlignment: CrossAxisAlignment.end,
          // alinhamento de uma lima ou coluna no eixo cruzado , padrão é center
          children: <Widget>[
            _button("a"),
            _button("b"),
            _button("c"),
          ],
        ) //SizedBox.expand
        );
  }
 */