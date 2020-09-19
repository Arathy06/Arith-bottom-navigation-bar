import 'package:flutter/material.dart';
import 'package:flutter_arithmatic_botnavbar/Addition.dart';
import 'package:flutter_arithmatic_botnavbar/Division.dart';
import 'package:flutter_arithmatic_botnavbar/Multiplication.dart';
import 'package:flutter_arithmatic_botnavbar/Subtraction.dart';

class Arith extends StatefulWidget {
  @override
  _ArithState createState() => _ArithState();
}

class _ArithState extends State<Arith> {
  var pages=[Addition(),Subtraction(),Multiplication(),Division()];
  int _myindex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:
          Center(child: Text("Arithematic Operations")),
        ),
        body:pages[_myindex],

        bottomNavigationBar: BottomNavigationBar(
            onTap: (index){

              setState(() {
                _myindex=index;
              });
            },
            currentIndex: _myindex,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.purpleAccent,
            iconSize: 20.0,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.add),
                  title: Text("Addition")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.minimize),
                  title: Text("Subtraction")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.star),
                  title: Text("Multiplication")
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.vertical_align_center),
                  title: Text("Division"))
            ]),
      ),

    );
  }
}

