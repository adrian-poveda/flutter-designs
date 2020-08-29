
import 'package:flutter/material.dart';


import 'dart:math';
import 'dart:ui';

class ButtonsPage extends StatelessWidget {

  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _appBackground(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titleText(),
                _createButtons()
              ],
            ),
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.calendar_today),
      //       title: Container()
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.pie_chart_outlined),
      //       title: Container()
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.supervised_user_circle),
      //       title: Container()
      //     )
      //   ],
      // ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _appBackground() {

    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0, 0.6),
          end: FractionalOffset(0, 1),
          colors: [
            Color.fromRGBO(52, 54, 101, 1),
            Color.fromRGBO(35, 37, 57, 1),
          ]
        )
      ),
    );

    final pinkBox = Transform.rotate(
      angle: -pi / 5.0 ,
      child: Container(
        height: 360,
        width: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 189, 1),
              Color.fromRGBO(241, 142, 172, 1),
            ]
          )
        ),
      )
    );

    return Stack(
      children: [
        gradient,
        Positioned(
          top: -115,
          child: pinkBox
          )
      ],
    );
  }

  Widget _titleText() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify colors', style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold
            )),
            SizedBox(height: 5),
            Text('Classify this transaction into a particular color', style: TextStyle(
              color: Colors.white, fontSize: 18
            )),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context){

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(
            color: Color.fromRGBO(116, 117, 152, 1)
          )
        )
      ),

      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart_outlined, size: 30),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30),
            title: Container()
          )
        ],
      ),
    );
  }

  Widget _createButtons() {

    return Table(
      children: [
        TableRow(
          children: [
            _createButtonCard( Colors.blue, Icons.swap_calls, 'BLUE'),
            _createButtonCard( Colors.purpleAccent, Icons.swap_calls, 'PURPLE'),
          ]
        ),
        TableRow(
          children: [
            _createButtonCard( Colors.redAccent, Icons.swap_calls, 'RED'),
            _createButtonCard( Colors.orangeAccent, Icons.swap_calls, 'ORANGE'),
          ]
        ),
        TableRow(
          children: [
            _createButtonCard( Colors.pinkAccent, Icons.swap_calls, 'PINK'),
            _createButtonCard( Colors.green, Icons.swap_calls, 'GREEN'),
          ]
        ),
        TableRow(
          children: [
            _createButtonCard( Colors.brown, Icons.swap_calls, 'BROWN'),
            _createButtonCard( Colors.grey, Icons.swap_calls, 'GREY'),
          ]
        )
      ],
    );
  }

  Widget _createButtonCard(Color color, IconData icon, String text) {

    return 
    // ClipRect(
    //   child: BackdropFilter(
    //     filter: ImageFilter.blur( sigmaX: 10, sigmaY: 10 ),
    //     child: 
        
        Container(
          height: 180,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 5),
              CircleAvatar(
                child: Icon(icon, color: Colors.white, size: 30),
                radius: 35,
                backgroundColor: color,
              ),
              Text('$text', style: TextStyle(
                color: color
              )),
              SizedBox(height: 5)
            ],
          ),
      //   ),
      // ),
    );
  }
}