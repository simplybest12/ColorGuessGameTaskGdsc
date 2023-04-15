import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../color/pallete.dart';
import 'firstscreen.dart';
import 'secondscreen.dart';

class ThirdScreen extends StatefulWidget {
  var nametothird;

  List Lis1;
  ThirdScreen(this.nametothird, this.Lis1);
  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  void initState() {
    super.initState();
    res = "";
  }

  List<int> L2 = [];
  bool press = true;
  late Color colorfromdialogbox1 = Colors.white10;
  late Color colorfromdialogbox2 = Colors.white10;
  late Color colorfromdialogbox3 = Colors.white10;
  late Color colorfromdialogbox4 = Colors.white10;
  late Color colorfromdialogbox5 = Colors.white10;
  late Color colorfromdialogbox6 = Colors.white10;
  late Color colorfromdialogbox7 = Colors.white10;
  String res = "";
  void resetcolor() {
    colorfromdialogbox1 = Colors.white10;
    colorfromdialogbox2 = Colors.white10;
    colorfromdialogbox3 = Colors.white10;
    colorfromdialogbox4 = Colors.white10;
    colorfromdialogbox5 = Colors.white10;
    colorfromdialogbox6 = Colors.white10;
    colorfromdialogbox7 = Colors.white10;
  }

  Future<void> _showSimpleDialog1() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            backgroundColor: Colors.black45,
            titleTextStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            title: const Text(
              'SELECT COLOR',
              style: TextStyle(color: Colors.white),
            ),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox1 = Colors.red;
                    L2.add(1);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'RED',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox1 = Colors.blue;
                    L2.add(2);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'BLUE',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox1 = Colors.green;
                    L2.add(3);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'GREEN',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox1 = Colors.purple;
                    L2.add(4);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'PURPLE',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox1 = Colors.white;
                    L2.add(5);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'WHITE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        });
  }

  Future<void> _showSimpleDialog2() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            backgroundColor: Colors.black45,
            titleTextStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            title: const Text(
              'SELECT COLOR',
              style: TextStyle(color: Colors.white),
            ),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox2 = Colors.red;
                    L2.add(1);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'RED',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox2 = Colors.blue;
                    L2.add(2);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'BLUE',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox2 = Colors.green;
                    L2.add(3);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'GREEN',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox2 = Colors.purple;
                    L2.add(4);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'PURPLE',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox2 = Colors.white;
                    L2.add(5);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'WHITE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        });
  }

  Future<void> _showSimpleDialog3() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            backgroundColor: Colors.black45,
            titleTextStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            title: const Text(
              'SELECT COLOR',
              style: TextStyle(color: Colors.white),
            ),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox3 = Colors.red;
                    L2.add(1);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'RED',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox3 = Colors.blue;
                    L2.add(2);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'BLUE',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox3 = Colors.green;
                    L2.add(3);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'GREEN',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox3 = Colors.purple;
                    L2.add(4);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'PURPLE',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox3 = Colors.white;
                    L2.add(5);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'WHITE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        });
  }

  Future<void> _showSimpleDialog4() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            backgroundColor: Colors.black45,
            titleTextStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            title: const Text(
              'SELECT COLOR',
              style: TextStyle(color: Colors.white),
            ),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox4 = Colors.red;
                    L2.add(1);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'RED',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox4 = Colors.blue;
                    L2.add(2);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'BLUE',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox4 = Colors.green;
                    L2.add(3);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'GREEN',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox4 = Colors.purple;
                    L2.add(4);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'PURPLE',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox4 = Colors.white;
                    L2.add(5);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'WHITE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        });
  }

  Future<void> _showSimpleDialog5() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            backgroundColor: Colors.black45,
            titleTextStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            title: const Text(
              'SELECT COLOR',
              style: TextStyle(color: Colors.white),
            ),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox5 = Colors.red;
                    L2.add(1);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'RED',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox5 = Colors.blue;
                    L2.add(2);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'BLUE',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox5 = Colors.green;
                    L2.add(3);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'GREEN',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox5 = Colors.purple;
                    L2.add(4);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'PURPLE',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox5 = Colors.white;
                    L2.add(5);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'WHITE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        });
  }

  Future<void> _showSimpleDialog6() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            backgroundColor: Colors.black45,
            titleTextStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            title: const Text(
              'SELECT COLOR',
              style: TextStyle(color: Colors.white),
            ),
            children: <Widget>[
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox6 = Colors.red;
                    L2.add(1);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'RED',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox6 = Colors.blue;
                    L2.add(2);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'BLUE',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox6 = Colors.green;
                    L2.add(3);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'GREEN',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox6 = Colors.purple;
                    L2.add(4);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'PURPLE',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox6 = Colors.white;
                    L2.add(5);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'WHITE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        });
  }

  Future<void> _showSimpleDialog7() async {
    await showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            backgroundColor: Colors.black45,
            titleTextStyle:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            title: const Text(
              'SELECT COLOR',
              style: TextStyle(color: Colors.white),
            ),
            children: <Widget>[
              SimpleDialogOption(
                padding: const EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox7 = Colors.red;
                    L2.add(1);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'RED',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox7 = Colors.blue;
                    L2.add(2);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'BLUE',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox7 = Colors.green;
                    L2.add(3);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'GREEN',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox7 = Colors.purple;
                    L2.add(4);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'PURPLE',
                  style: TextStyle(
                      color: Colors.purple,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SimpleDialogOption(
                padding: EdgeInsets.all(12),
                onPressed: () {
                  setState(() {
                    colorfromdialogbox7 = Colors.white;
                    L2.add(5);
                  });
                  Navigator.pop(context);
                },
                child: Text(
                  'WHITE',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "devinar".toUpperCase(),
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 2.5),
          ),
          centerTitle: true,
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                  Pallete.gradient1,
                  Pallete.gradient2,
                  Pallete.gradient3
                ])),
          )),
      backgroundColor: Pallete.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(right: 20, bottom: 20),
              child: IconButton(
                onPressed: () {
                  setState(() {
                    res = "";
                    resetcolor();
                    L2 = [];
                  });
                },
                icon: Icon(Icons.refresh_rounded),
                iconSize: 40,
                color: Colors.white,
              ),
            ),
            Text(
              "Drop Color In Proper Order.",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: ContainerFor3(
                    colordialog: colorfromdialogbox1,
                    text: "1",
                  ),
                  onTap: () {
                    setState(() {
                      _showSimpleDialog1();
                    });
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  child: ContainerFor3(
                    colordialog: colorfromdialogbox2,
                    text: "2",
                  ),
                  onTap: () {
                    setState(() {
                      _showSimpleDialog2();
                    });
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  child: ContainerFor3(
                    colordialog: colorfromdialogbox3,
                    text: "3",
                  ),
                  onTap: () {
                    setState(() {
                      _showSimpleDialog3();
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: ContainerFor3(
                    colordialog: colorfromdialogbox4,
                    text: "4",
                  ),
                  onTap: () {
                    setState(() {
                      _showSimpleDialog4();
                    });
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  child: ContainerFor3(
                    colordialog: colorfromdialogbox5,
                    text: "5",
                  ),
                  onTap: () {
                    setState(() {
                      _showSimpleDialog5();
                    });
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  child: ContainerFor3(
                    colordialog: colorfromdialogbox6,
                    text: "6",
                  ),
                  onTap: () {
                    setState(() {
                      _showSimpleDialog6();
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            GestureDetector(
              child: ContainerFor3(
                colordialog: colorfromdialogbox7,
                text: "7",
              ),
              onTap: () {
                setState(() {
                  _showSimpleDialog7();
                });
              },
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Pallete.gradient1,
                      Pallete.gradient2,
                      Pallete.gradient3
                    ],
                  ),
                  borderRadius: BorderRadius.circular(12)),
              child: TextButton(
                style: TextButton.styleFrom(
                  fixedSize: Size(340, 55),
                ),
                onPressed: () {
                  setState(() {
                    if (L2.isEmpty) {
                      res = "Not Chosen";
                    } else if (listEquals((widget.Lis1), L2)) {
                      res = "Winner";
                    } else {
                      res = "Loser";
                    }
                  });

                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      backgroundColor: Colors.black87,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      title: Text(
                        "${widget.nametothird}",
                        style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1,
                            fontSize: 21),
                      ),
                      content: Container(
                        alignment: Alignment.center,
                        height: 50,
                        child: Text(
                          res,
                          style: TextStyle(
                              color:
                                  res == "Winner" ? Colors.blue : Colors.pink,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                              fontSize: 27),
                        ),
                      ),
                      actions: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white30,
                          ),
                          alignment: Alignment.center,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FirstScreen()));
                            },
                            child: const Text(
                              'Move To Home Page',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text(
                  "SUBMIT",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerFor3 extends StatelessWidget {
  ContainerFor3({super.key, required this.colordialog, required this.text});
  Color colordialog;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.yellow,
              fontSize: 18,
              letterSpacing: 1,
              fontWeight: FontWeight.bold),
        ),
      ),
      decoration: BoxDecoration(
          color: colordialog, borderRadius: BorderRadius.circular(20)),
    );
  }
}
