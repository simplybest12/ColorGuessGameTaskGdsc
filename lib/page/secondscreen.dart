import 'dart:async';
import 'dart:math';
import 'package:colorguessgame/extras/logic.dart';
import 'package:colorguessgame/page/firstscreen.dart';
import 'package:colorguessgame/page/thirdscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../color/pallete.dart';

class MainScreen extends StatefulWidget {
  final namefromfirst;
  MainScreen(this.namefromfirst);
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void initState() {
    super.initState();
    game.board = Game.initGameBoard();

    Timer(Duration(seconds: 13), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => ThirdScreen(widget.namefromfirst, l1)));
    });
  }

  bool pressed = false;

  Game game = Game();
  
  String res = "";

  List l1 = [];
  int seconds = 15;
  final List<Color> circleColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.purple,
    Colors.white

  ];
  late Color colorr;
  int count = 1;
  Color colsel() {
    if (pressed == false) {
      return colorr = Colors.white24;
    } else {
      int ind = Random().nextInt(5);
      l1.add(ind + 1);
      print(l1);
      return colorr = circleColors[ind];
    }
  }

  @override
  Widget build(BuildContext context) {
    double boardWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "devinar".toUpperCase(),
              style:const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5),
            ),
            centerTitle: true,
            elevation: 0,
            flexibleSpace: Container(
              decoration:const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                    Pallete.gradient1,
                    Pallete.gradient2,
                    Pallete.gradient3
                  ])),
            )),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: boardWidth-180),
                  child: Text(
                    "Time Limit:10 sec",
                    style: GoogleFonts.lato(
                        textStyle:const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(
                  height: 65,
                ),
                Text(
                  "remember this".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle:const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.all(16),
                  width: 350,
                  height: 350,
                  child: GridView.count(
                      crossAxisCount: 3,
                      padding: const EdgeInsets.all(16),
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 8,
                      children: List.generate(
                        Game.boardlenth,
                        (index) {
                          return (
                            Container(
                            width: Game.boardsize,
                            height: Game.boardsize,
                            decoration: BoxDecoration(
                              color: colsel(),
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ));
                        },
                      )),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      game.board = Game.initGameBoard();
                      print(l1);
                      l1 = [];
                    });
                    pressed = true;
                  },
                  icon:const Icon(CupertinoIcons.arrow_right_arrow_left_square),
                  iconSize: 40,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 25,
                ),
                Visibility(
                  visible: pressed ? false : true,
                  child:const Text(
                    "Tap To Start",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
