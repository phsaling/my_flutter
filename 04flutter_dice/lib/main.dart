import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 3, 49, 87),
        appBar: AppBar(
          title: Center(
            child: Text('Dicee'),
          ),
          backgroundColor: Color.fromARGB(255, 211, 172, 46),
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeTwoDices() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) +
          1; // A função "Random().nextInt(max)" pede um número máximo para randomização, porém ele parte de "0" até "max - 1". Portanto, para que randomize entre 1 e 6 (dados) deve-se adicionar "+1", assim, quando for randomizado 0 ou 5, somando 1, terá 1 a 6.
      rightDiceNumber = Random().nextInt(6) + 1;
      print('Left dice number changed to:$leftDiceNumber');
    });
  } // É possível criar um novo "void xxx()" para adicionar uma nova função como no caso o "changeTwoDices", assim é possível automatizar as funções, no caso os dados, além de poder adicionar mais elementos (ou mais dados, no caso) sem a necessidade de ter que replicar os códigos várias vezes. Assim, como observado neste caso, a função "changeTwoDices" é responsável por chamar o "setState ()" e realizar a randomização dos dados, portanto, nos "TextButtons" do app, não é necessário adicionar todos os dados a serem randomizados quando forem pressionados.

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeTwoDices();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeTwoDices();
                print('Right dice number changed to:$rightDiceNumber.');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
