// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftdice = 1;
  int rightdice = 1;
  bool diceButton = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red.shade500,
        appBar: AppBar(
          title: Text(
            'DICE',
            style: TextStyle(fontSize: 50),
          ),
          centerTitle: true,
          backgroundColor: Colors.red.shade500,
        ),
        body: Container(
          margin: EdgeInsets.only(left: 8,right: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        leftdice = Random().nextInt(6) + 1;
                        rightdice = Random().nextInt(6) + 1;
                        leftdice == rightdice
                            ? diceButton = false
                            : diceButton = true;
                        setState(() {});
                      },
                      child: Image.asset('images/$leftdice.png'),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        leftdice = Random().nextInt(6) + 1;
                        rightdice = Random().nextInt(6) + 1;
                        leftdice == rightdice
                            ? diceButton = false
                            : diceButton = true;
                        setState(() {});
                      },
                      child: Image.asset('images/$rightdice.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              diceButton
                  ? SizedBox()
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Colors.green.shade400),
                      onPressed: () {},
                      child: Text(
                        'you win',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
