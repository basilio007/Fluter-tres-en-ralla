import 'package:flutter/material.dart';
import '/constants.dart';
import '/screens/game_screen.dart';

class MenuScreen extends StatelessWidget {
  static const String id = 'menu';

  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Tic Tac\nToe', style: k_bigTitleTextStyle, textAlign: TextAlign.center),
          const SizedBox(height: 25),
          Center(
            child: TextButton(
              onPressed: () => Navigator.pushNamed(context, GameScreen.id),
              child: const Text('Jugar', style: k_buttonTextStyle),
            ),
          ),
        ],
      ),
    );
  }
}
