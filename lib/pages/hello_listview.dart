import 'package:flutter/material.dart';

class Dog {
  String nome;
  String foto;

  Dog(this.nome, this.foto);
}

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
    List<Dog> dogs = [
      new Dog("Capa", "assets/images/capa.jpeg"),
      new Dog("Capa2", "assets/images/capa2.jpeg"),
      
    ];
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: dogs.length,
        itemBuilder: (context, index) {
          Dog dog = dogs[index];

          return Stack(
            fit: StackFit.expand,
            children: <Widget>[
              _img(dog.foto),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.all(12),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(16)
                  ),
                  child: Text(
                    dog.nome,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                  ),
                ),
              )
            ],
          );
        });
  }

  Image _img(String path) {
    return Image.asset(
      path,
      fit: BoxFit.cover,
    );
  }
}
