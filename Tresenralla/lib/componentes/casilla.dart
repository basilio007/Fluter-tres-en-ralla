import 'package:flutter/material.dart';
import 'package:tresenralla/game_logic.dart';

class Casilla extends StatefulWidget {
  Casilla(this.logi, {Key? key}) : super(key: key);

  GameLogic logi;

  @override
  State<Casilla> createState() => _CasillaState();
}

class _CasillaState extends State<Casilla> {

Widget? player = null;

  @override
  Widget build(BuildContext context) {
    
    return GestureDetector(
      onTap: () {

        setState(() {
         if(widget.logi.turnoJugador1){
           player = Icon(Icons.close_outlined, size: 85);
         }else{
           player = Icon(Icons.circle_outlined, size: 85);
         }
        widget.logi.cambioTurno();

        });
      },
      child: Container(
        margin: EdgeInsets.all(5.0),

        width: 100,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.grey.shade700,
            borderRadius: BorderRadius.circular(15.0)

        ),
        child: player,

      ),
    );
  }
}
