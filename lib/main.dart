import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.black54,
        ),
          body: AskMe(),
      ),
    ),
  );}

class AskMe extends StatefulWidget {

  @override
  State<AskMe> createState() => _AskMeState();
}

class _AskMeState extends State<AskMe> {
  int Number=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget> [
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState((){
                  Number=Random().nextInt(5)+1;

                  print('ball = $Number' );
                } );


              },
              child: Image.asset('images/ball$Number.png'),
            ),
          ),
]

      ),
  );
  }
}
