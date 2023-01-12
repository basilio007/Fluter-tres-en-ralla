import 'package:flutter/material.dart';
import '/screens/game_screen.dart';
import '/screens/menu_screen.dart';

void main() {
  runApp(const TicTacToeApp());
}

class TicTacToeApp extends StatelessWidget {
  const TicTacToeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: MenuScreen.id,
      routes: {
        MenuScreen.id: (context) => const MenuScreen(),
        GameScreen.id: (context) => const GameScreen(),
        //GameOverScreen.id: (context) => const GameOverScreen()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

