import 'package:flutter/material.dart';
import 'package:tresenralla/componentes/casilla.dart';
import 'package:tresenralla/game_logic.dart';

class GameScreen extends StatefulWidget {
  static const String id = 'game';

  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  GameLogic logic = GameLogic();

  @override
  Widget build(BuildContext context) {
    return Column(
        //centralizacion de las columnas
        mainAxisAlignment: MainAxisAlignment.center,
        /////////////////////////
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Casilla(logic), Casilla(logic), Casilla(logic),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Casilla(logic), Casilla(logic),Casilla(logic),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Casilla(logic), Casilla(logic), Casilla(logic),
          ]),
        ]);
  }
}
