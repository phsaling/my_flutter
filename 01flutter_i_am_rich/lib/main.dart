import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        appBar: AppBar(
          title: Center(
            child: Text("I am Rich"),
          ),
          backgroundColor: Colors.cyan[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
// Para não esquecer:
// 01- "MaterialApp ()" é a função base para todo app. Sendo assim, a base
//    inicial para muitos apps pode ser feita seguindo a estrutura base
//    acima (L. 03 - L. 11).
// 02- Tudo que está em amarelo deve ser seguido por um parentesis. Funciona
//    como se fosse uma "função mestre".
// 03- "home", "child" e afins demonstram uma "posição" do elemento (widget) em
//      relação a árvore de elementos, uma vez que a parte posterior está
//      incerida na anterior (home>child>etc).
