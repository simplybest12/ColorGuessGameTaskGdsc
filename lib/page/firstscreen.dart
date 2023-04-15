import 'package:colorguessgame/page/secondscreen.dart';
import 'package:flutter/material.dart';

import '../color/pallete.dart';


class FirstScreen extends StatelessWidget {
  FirstScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    String UserId = '';
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/signin_balls.png'),
                const SizedBox(
                  height: 150,
                ),
                const Text(
                  "Hola Users!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontSize: 37,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 45,
                ),
                Container(
                  width: 350,
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      style:const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          letterSpacing: 1),
                      controller: myController,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(28),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Pallete.borderColor, width: 3),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Pallete.gradient2, width: 3),
                              borderRadius: BorderRadius.circular(12)),
                          hintText: "User Id",
                          hintStyle: TextStyle(color: Colors.white54)),
                      obscureText: false,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
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
                      fixedSize: Size(330, 60),
                    ),
                    onPressed: () {
                      UserId = myController.text;
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainScreen(UserId)));
                      }
                    },
                    child: const Text(
                      "Start",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
