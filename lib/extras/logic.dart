import 'package:flutter/material.dart';

class player {
  static const empty="";
}

class Game {
  static final boardlenth = 7;
  static final boardsize = 50.0;

  //creating a board
  List<String>? board;

  static List<String>? initGameBoard() =>
      List.generate(boardlenth, (index) => player.empty);
}

